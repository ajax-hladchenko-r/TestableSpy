import MacroTesting
import TestableSpyMacros
import Testing

protocol Foo {
    func doSomething(first: Int, second: Double) async throws
    func doSomething(first: Int, second: Double) async throws -> String
    func doSomething(event: String) async
}

// MARK: - Mock

@Suite(.macros([AddSpyMacro.self]))
struct TestableSpyTests {
    @Test func `test macro expansion`() {
        assertMacro {
            """
            class FooMock: Foo {
                @AddSpy
                func doSomething(first: Int, second: Double) async throws {}

                @AddSpy("doSomething_return_string")
                func doSomething(first: Int, second: Double) async throws -> String {
                    "Stub"
                }

                @AddSpy("doSomething_event")
                func doSomething(event: String) async {}
            }
            """
        } expansion: {
            """
            class FooMock: Foo {
                func doSomething(first: Int, second: Double) async throws {
                    if doSomething.hasBody || doSomething.return != nil {
                        try await doSomething.execute(parameters: (first, second)).get()
                        return
                    }
                }

                let doSomething: SpyWrapper<(Int, Double), Result<Void, any Error>> = .init()
                func doSomething(first: Int, second: Double) async throws -> String {
                    if doSomething_return_string.hasBody || doSomething_return_string.return != nil {
                        return try await doSomething_return_string.execute(parameters: (first, second)).get()
                    }
                    return
                            "Stub"
                }

                let doSomething_return_string: SpyWrapper<(Int, Double), Result<String, any Error>> = .init()
                func doSomething(event: String) async {
                    if doSomething_event.hasBody || doSomething_event.return != nil {
                        await doSomething_event.execute(parameters: event)
                        return
                    }
                }

                let doSomething_event: SpyWrapper<String, Void> = .init()
            }
            """
        }
    }
}
