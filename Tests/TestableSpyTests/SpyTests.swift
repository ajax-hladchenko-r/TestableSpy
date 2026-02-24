// swiftlint:disable line_length
import MacroTesting
import TestableSpy
import TestableSpyMacros
import Testing

private protocol Bar { func greet(name: String) -> String }

@Spy private class BarMock: Bar {
    func greet(name: String) -> String { "Hello" }
}

@Suite struct SpyCompilationTests {
    @Test func `@Spy compiles and tracks calls`() {
        let mock = BarMock()
        mock.greet.return = .success("Hi")
        let result = mock.greet(name: "Alice")
        #expect(result == "Hi")
        #expect(mock.greet.callCount == 1)
        #expect(mock.greet.parameters == "Alice")
    }
}

@Suite(.macros([SpyMacro.self, AddSpyMacro.self]))
struct SpyTests {

    @Test func `single method - no args void return`() {
        assertMacro {
            #"""
            @Spy
            class FooMock {
                func greet() {}
            }
            """#
        } expansion: {
            """
            class FooMock {
                func greet() {
                    if greet.isOverridden {
                        return greet.execute(parameters: ())
                    } else {
                        greet.body {
                            return ()
                        }
                        return greet.execute(parameters: ())
                    }
                }

                let greet: SpyWrapper<Void, Void, Never> = .init()
            }
            """
        }
    }

    @Test func `single method - one arg returns value`() {
        assertMacro {
            #"""
            @Spy
            class BarMock {
                func greet(name: String) -> String { "Hello" }
            }
            """#
        } expansion: {
            """
            class BarMock {
                func greet(name: String) -> String {
                    if greet.isOverridden {
                        return greet.execute(parameters: name)
                    } else {
                        greet.body { name in
                            return "Hello"
                        }
                        return greet.execute(parameters: name)
                    }
                }

                let greet: SpyWrapper<String, String, Never> = .init()
            }
            """
        }
    }

    @Test func `multiple methods`() {
        assertMacro {
            #"""
            @Spy
            class MultiMock {
                func first() {}
                func second(value: Int) -> Int { value }
            }
            """#
        } expansion: {
            """
            class MultiMock {
                func first() {
                    if first.isOverridden {
                        return first.execute(parameters: ())
                    } else {
                        first.body {
                            return ()
                        }
                        return first.execute(parameters: ())
                    }
                }

                let first: SpyWrapper<Void, Void, Never> = .init()
                func second(value: Int) -> Int {
                    if second.isOverridden {
                        return second.execute(parameters: value)
                    } else {
                        second.body { value in
                            return value
                        }
                        return second.execute(parameters: value)
                    }
                }

                let second: SpyWrapper<Int, Int, Never> = .init()
            }
            """
        }
    }

    @Test func `skips non-function members`() {
        assertMacro {
            #"""
            @Spy
            class WithVarMock {
                var name: String = "test"
                func doWork() {}
            }
            """#
        } expansion: {
            """
            class WithVarMock {
                var name: String = "test"
                func doWork() {
                    if doWork.isOverridden {
                        return doWork.execute(parameters: ())
                    } else {
                        doWork.body {
                            return ()
                        }
                        return doWork.execute(parameters: ())
                    }
                }

                let doWork: SpyWrapper<Void, Void, Never> = .init()
            }
            """
        }
    }

    @Test func `skips methods already annotated with @AddSpy`() {
        assertMacro {
            #"""
            @Spy
            class PartialMock {
                @AddSpy
                func alreadyAnnotated() {}
                func notAnnotated() {}
            }
            """#
        } expansion: {
            """
            class PartialMock {
                func alreadyAnnotated() {
                    if alreadyAnnotated.isOverridden {
                        return alreadyAnnotated.execute(parameters: ())
                    } else {
                        alreadyAnnotated.body {
                            return ()
                        }
                        return alreadyAnnotated.execute(parameters: ())
                    }
                }

                let alreadyAnnotated: SpyWrapper<Void, Void, Never> = .init()
                func notAnnotated() {
                    if notAnnotated.isOverridden {
                        return notAnnotated.execute(parameters: ())
                    } else {
                        notAnnotated.body {
                            return ()
                        }
                        return notAnnotated.execute(parameters: ())
                    }
                }

                let notAnnotated: SpyWrapper<Void, Void, Never> = .init()
            }
            """
        }
    }

    @Test func `diagnostic - overloaded method`() {
        assertMacro {
            #"""
            @Spy
            class FooMock {
                func fetch(id: Int) -> String { "" }
                func fetch(name: String) -> String { "" }
                func load() {}
            }
            """#
        } diagnostics: {
            """
            @Spy
            ┬───
            ├─ 🛑 Method 'fetch' is overloaded — @Spy cannot generate a unique spy name. Annotate each overload of 'fetch' manually with @AddSpy("uniqueName").
            ╰─ 🛑 Method 'fetch' is overloaded — @Spy cannot generate a unique spy name. Annotate each overload of 'fetch' manually with @AddSpy("uniqueName").
            class FooMock {
                func fetch(id: Int) -> String { "" }
                func fetch(name: String) -> String { "" }
                func load() {}
            }
            """
        }
    }

    @Test func `skips static methods`() {
        assertMacro {
            #"""
            @Spy
            class FooMock {
                static func create() -> FooMock { FooMock() }
                func load() {}
            }
            """#
        } expansion: {
            """
            class FooMock {
                static func create() -> FooMock { FooMock() }
                func load() {
                    if load.isOverridden {
                        return load.execute(parameters: ())
                    } else {
                        load.body {
                            return ()
                        }
                        return load.execute(parameters: ())
                    }
                }

                let load: SpyWrapper<Void, Void, Never> = .init()
            }
            """
        }
    }

    @Test func `struct with method`() {
        assertMacro {
            #"""
            @Spy
            struct StructMock {
                func compute(x: Int, y: Int) -> Int { x + y }
            }
            """#
        } expansion: {
            """
            struct StructMock {
                func compute(x: Int, y: Int) -> Int {
                    if compute.isOverridden {
                        return compute.execute(parameters: (x: x, y: y))
                    } else {
                        compute.body { (x, y) in
                            return x + y
                        }
                        return compute.execute(parameters: (x: x, y: y))
                    }
                }

                let compute: SpyWrapper<(x: Int, y: Int), Int, Never> = .init()
            }
            """
        }
    }
}
// swiftlint:enable line_length
