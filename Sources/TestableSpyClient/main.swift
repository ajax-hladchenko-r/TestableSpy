import TestableSpy

// MARK: - Protocol

protocol Foo {
    func doSomething(first: Int, second: Double) async throws
    func doSomething(first: Int, second: Double) async throws -> String
    func doSomething(event: String) async
}

// MARK: - Mock

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

// MARK: - Usage example

let mock = FooMock()

// Setup spy return values
mock.doSomething.return = .success(())
mock.doSomething_event.return = ()  // Void return value

mock.doSomething_return_string.return = .success("Return from property")
// Setup custom body for doSomething_return_string
mock.doSomething_return_string.body { parameters in
    print("Custom body executed with parameters: \(parameters)")
    return .success("Custom result from body!")
}

// Call methods - need to specify type for ambiguous methods
try await mock.doSomething(first: 1, second: 2.5) as Void
let result: String = try await mock.doSomething(first: 3, second: 4.5)
await mock.doSomething(event: "test")

// Verify calls
print("doSomething called \(mock.doSomething.callCount) times")
print("Parameters: \(mock.doSomething.parameters!)")

print("doSomething_return_string called \(mock.doSomething_return_string.callCount) times")
print("Result: \(result)")

print("doSomething_event called \(mock.doSomething_event.callCount) times")
print("Event: \(mock.doSomething_event.parameters!)")
