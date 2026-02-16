import MacroTesting
import TestableSpyMacros
import Testing

protocol Foo {
    func doSomething(first: Int, second: Double) async throws
    func doSomething(first: Int, second: Double) async throws -> String
    func doSomething(event: String) async
    func doSomething(event: String)
}

// MARK: - Mock

@Suite(.macros([AddSpyMacro.self]))
struct TestableSpyTests {
    // swiftlint:disable:next function_body_length
    @Test func `test macro expansion`() {
        assertMacro {
            #"""
            public class FooMock: Foo {
                @AddSpy
                public func doSomething(first: Int, second: Double) async throws {}

                @AddSpy("doSomething_return_string")
                public func doSomething(first: Int, second: Double) async throws -> String {
                    let firs_copy = first
                    return "Stub \(firs_copy)"
                }

                @AddSpy("doSomething_event")
                public func doSomething(event: String) async {}

                @AddSpy("doSomething_void")
                public func doSomething(event: String){}
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
                public func doSomething(event: String) async {
                    if doSomething_event.isOverridden {
                        return await doSomething_event.execute(parameters: event)
                    } else {
                        await doSomething_event.execute(parameters: event)
                    }
                }

                public let doSomething_event: SpyWrapper<String, Void, Never> = .init()
                public func doSomething(event: String){
                    if doSomething_void.isOverridden {
                        return await doSomething_void.execute(parameters: event)
                    } else {
                        await doSomething_void.execute(parameters: event)
                    }
                }

                public let doSomething_void: SpyWrapper<String, Void, Never> = .init()
            }
            """#
        }
    }
}
