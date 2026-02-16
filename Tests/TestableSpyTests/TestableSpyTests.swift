import MacroTesting
import TestableSpyMacros
import Testing

public protocol Foo {
    func doSomething(first: Int, second: Double) async throws
    func doSomething(first: Int, second: Double) async throws -> String
    func doSomething(event: String) async
    func doSomething(event: String)
}

// MARK: - Mock

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
                        return try await doSomething.execute(parameters: (first, second))
                    } else {
                        try await doSomething.execute(parameters: (first, second))
                    }
                }

                public let doSomething: SpyWrapper<(Int, Double), Void, any Error> = .init()
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
                        return try await doSomething_return_string.execute(parameters: (first, second))
                    } else {
                        try await doSomething_return_string.execute(parameters: (first, second))
                    }
                    let firs_copy = first
                    return "Stub \(firs_copy)"
                }

                public let doSomething_return_string: SpyWrapper<(Int, Double), String, any Error> = .init()
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
                        await doSomething_event.execute(parameters: event)
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
                        doSomething_void.execute(parameters: event)
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
                        doSomething.execute(parameters: completion)
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
                        return doSomething.execute(parameters: (value, completion))
                    } else {
                        doSomething.execute(parameters: (value, completion))
                    }
                }

                let doSomething: SpyWrapper<(Int, (Result<String, Error>) -> Void), Void, Never> = .init()
            }
            """#
        }
    }
}
