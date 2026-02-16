import TestableSpy

// MARK: - Protocol

protocol Foo {
    func doSomething(first: Int, second: Double) async throws
    func doSomething(first: Int, second: Double) async throws -> String
    func doSomething(event: String) async
    func doSomething(
        event: String,
        _ closure: @escaping (Result<Bool, any Error>) async throws -> Result<Int, any Error>
    ) async -> Result<Bool, Never>
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

    @AddSpy("doSomething_callback")
    func doSomething(
        event: String,
        _ closure: @escaping (Result<Bool, any Error>) async throws -> Result<Int, any Error>
    ) async -> Result<Bool, Never> { .success(false) }

}

// MARK: - Usage example

let mock = FooMock()

// Setup spy return values
mock.doSomething.return = .success(())
mock.doSomething_event.return = .success(())
mock.doSomething_return_string.return = .success("Return from property")

// Setup custom body for doSomething_return_string
mock.doSomething_return_string.body { parameters in
    print("Custom body executed")
    return "Custom result from body and with paramters \(parameters)!"
}
let closure: (Result<Bool, any Error>) async throws -> Result<Int, any Error> = { value in
    print("from closure with value \(value)")
    return .success(0)
}
mock.doSomething_callback.body { _, callback in
    _ = try await callback(.success(true))
    return .success(true)
}

// Call methods
try await mock.doSomething(first: 1, second: 2.5) as Void
let result: String = try await mock.doSomething(first: 3, second: 4.5)
await mock.doSomething(event: "test")
_ = await mock.doSomething(event: "callback", closure)

// Verify calls
print("doSomething called \(mock.doSomething.callCount) times")
print("Parameters: \(mock.doSomething.parameters!)")

print("doSomething_return_string called \(mock.doSomething_return_string.callCount) times")
print("Result: \(result)")

print("doSomething_event called \(mock.doSomething_event.callCount) times")
print("Event: \(mock.doSomething_event.parameters!)")
