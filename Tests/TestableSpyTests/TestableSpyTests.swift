import MacroTesting
import TestableSpyMacros
import Testing

// swiftlint:disable line_length
@Suite(.macros([AddSpyMacro.self]))
struct TestableSpyTests {
    @Test func `async throws - void return`() {
        assertMacro {
            #"""
            public class FooMock: Foo {
                @AddSpy
                public func doSomething(first: Int, second: Double) async throws {}
            }
            """#
        } expansion: {
            #"""
            public class FooMock: Foo {
                public func doSomething(first: Int, second: Double) async throws {
                    if doSomething.isOverridden {
                        return try await doSomething.execute(parameters: (first: first, second: second))
                    } else {
                        doSomething.body { (first, second) in
                            return ()
                        }
                        return try await doSomething.execute(parameters: (first: first, second: second))
                    }
                }

                public let doSomething: SpyWrapper<(first: Int, second: Double), Void, any Error> = .init()
            }
            """#
        }
    }

    @Test func `async throws - returns value with original body`() {
        assertMacro {
            #"""
            public class FooMock: Foo {
                @AddSpy("doSomething_return_string")
                public func doSomething(first: Int, second: Double) async throws -> String {
                    let firs_copy = first
                    return "Stub \(firs_copy)"
                }
            }
            """#
        } expansion: {
            #"""
            public class FooMock: Foo {
                public func doSomething(first: Int, second: Double) async throws -> String {
                    if doSomething_return_string.isOverridden {
                        return try await doSomething_return_string.execute(parameters: (first: first, second: second))
                    } else {
                        doSomething_return_string.body { (first, second) in
                            let firs_copy = first
                            return "Stub \(firs_copy)"
                        }
                        return try await doSomething_return_string.execute(parameters: (first: first, second: second))
                    }
                }

                public let doSomething_return_string: SpyWrapper<(first: Int, second: Double), String, any Error> = .init()
            }
            """#
        }
    }

    @Test func `async - void return`() {
        assertMacro {
            #"""
            public class FooMock: Foo {
                @AddSpy("doSomething_event")
                public func doSomething(event: String) async {}
            }
            """#
        } expansion: {
            #"""
            public class FooMock: Foo {
                public func doSomething(event: String) async {
                    if doSomething_event.isOverridden {
                        return await doSomething_event.execute(parameters: event)
                    } else {
                        doSomething_event.body { event in
                            return ()
                        }
                        return await doSomething_event.execute(parameters: event)
                    }
                }

                public let doSomething_event: SpyWrapper<String, Void, Never> = .init()
            }
            """#
        }
    }

    @Test func `sync - void return`() {
        assertMacro {
            #"""
            public class FooMock: Foo {
                @AddSpy("doSomething_void")
                public func doSomething(event: String){}
            }
            """#
        } expansion: {
            #"""
            public class FooMock: Foo {
                public func doSomething(event: String){
                    if doSomething_void.isOverridden {
                        return doSomething_void.execute(parameters: event)
                    } else {
                        doSomething_void.body { event in
                            return ()
                        }
                        return doSomething_void.execute(parameters: event)
                    }
                }

                public let doSomething_void: SpyWrapper<String, Void, Never> = .init()
            }
            """#
        }
    }

    @Test func `sync - single escaping closure parameter`() {
        assertMacro {
            #"""
            class BarMock {
                @AddSpy
                func doSomething(completion: @escaping (String) -> Void) {}
            }
            """#
        } expansion: {
            #"""
            class BarMock {
                func doSomething(completion: @escaping (String) -> Void) {
                    if doSomething.isOverridden {
                        return doSomething.execute(parameters: completion)
                    } else {
                        doSomething.body { completion in
                            return ()
                        }
                        return doSomething.execute(parameters: completion)
                    }
                }

                let doSomething: SpyWrapper<(String) -> Void, Void, Never> = .init()
            }
            """#
        }
    }

    @Test func `sync - multiple parameters with escaping closure`() {
        assertMacro {
            #"""
            class BarMock {
                @AddSpy
                func doSomething(value: Int, completion: @escaping (Result<String, Error>) -> Void) {}
            }
            """#
        } expansion: {
            #"""
            class BarMock {
                func doSomething(value: Int, completion: @escaping (Result<String, Error>) -> Void) {
                    if doSomething.isOverridden {
                        return doSomething.execute(parameters: (value: value, completion: completion))
                    } else {
                        doSomething.body { (value, completion) in
                            return ()
                        }
                        return doSomething.execute(parameters: (value: value, completion: completion))
                    }
                }

                let doSomething: SpyWrapper<(value: Int, completion: (Result<String, Error>) -> Void), Void, Never> = .init()
            }
            """#
        }
    }
    // MARK: - Typed Throws

    @Test func `async typed throws - returns value`() {
        assertMacro {
            #"""
            class FooMock {
                @AddSpy
                func fetch(id: Int) async throws(NetworkError) -> String {
                    "Stub"
                }
            }
            """#
        } expansion: {
            #"""
            class FooMock {
                func fetch(id: Int) async throws(NetworkError) -> String {
                    if fetch.isOverridden {
                        return try await fetch.execute(parameters: id)
                    } else {
                        fetch.body { id in
                            return "Stub"
                        }
                        return try await fetch.execute(parameters: id)
                    }
                }

                let fetch: SpyWrapper<Int, String, NetworkError> = .init()
            }
            """#
        }
    }

    // MARK: - Diagnostic Tests

    @Test func `diagnostic - generic method`() {
        assertMacro {
            #"""
            class FooMock {
                @AddSpy
                func fetch<T: Decodable>(type: T.Type) -> T {
                    fatalError()
                }
            }
            """#
        } diagnostics: {
            #"""
            class FooMock {
                @AddSpy
                ┬──────
                ├─ 🛑 @AddSpy cannot be applied to generic methods. Method-level type parameters cannot be represented at property scope in the generated SpyWrapper.
                ╰─ 🛑 @AddSpy cannot be applied to generic methods. Method-level type parameters cannot be represented at property scope in the generated SpyWrapper.
                func fetch<T: Decodable>(type: T.Type) -> T {
                    fatalError()
                }
            }
            """#
        }
    }

    @Test func `diagnostic - inout parameter`() {
        assertMacro {
            #"""
            class FooMock {
                @AddSpy
                func update(_ value: inout String) {}
            }
            """#
        } diagnostics: {
            #"""
            class FooMock {
                @AddSpy
                ┬──────
                ├─ 🛑 @AddSpy cannot be applied to methods with 'inout' parameters. inout values cannot be stored in SpyWrapper's parameters property.
                ╰─ 🛑 @AddSpy cannot be applied to methods with 'inout' parameters. inout values cannot be stored in SpyWrapper's parameters property.
                func update(_ value: inout String) {}
            }
            """#
        }
    }
}
// swiftlint:enable line_length
