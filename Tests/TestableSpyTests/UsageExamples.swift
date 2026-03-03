import Foundation
import TestableSpy
import Testing

// MARK: - Example: @Spy — Spy an Entire Class at Once

private protocol OrderService {
    func create(item: String) -> String
    func cancel(id: String)
    func status(id: String) -> String
}

@Spy
private class OrderServiceMock: OrderService {
    func create(item: String) -> String { "order-\(item)" }
    func cancel(id: String) {}
    func status(id: String) -> String { "pending" }
}

@Suite
struct SpyEntireClassExample {
    @Test
    func spiesAllMethodsWithSingleAnnotation() {
        // Given
        let mock = OrderServiceMock()
        mock.create.return = .success("order-42")

        // When
        let id = mock.create(item: "widget")
        mock.cancel(id: id)
        mock.cancel(id: "next-id")
        let orderStatus = mock.status(id: id)

        // Then
        #expect(mock.create.callCount == 1)
        #expect(mock.cancel.callCount == 2)
        #expect(mock.status.callCount == 1)
        #expect(mock.create.allParameters == ["widget"])
        #expect(mock.cancel.allParameters == ["order-42", "next-id"])
        #expect(mock.status.allParameters == ["order-42"])
        #expect(id == "order-42")
        #expect(orderStatus == "pending")
    }
}

// MARK: - Example: Async Throws — Success and Error Paths

private struct StubUser: Equatable, Sendable {
    let id: String
    let name: String
}

private protocol UserRepository {
    func fetchUser(id: String) async throws -> StubUser
}

@Spy
private class UserRepositoryMock: UserRepository {
    func fetchUser(id: String) async throws -> StubUser {
        StubUser(id: id, name: "Stub")
    }
}

@Suite
struct AsyncThrowsExample {
    @Test
    func overridesDefaultStubWithConfiguredReturn() async throws {
        // Given
        let mock = UserRepositoryMock()
        let custom = StubUser(id: "1", name: "Alice")
        mock.fetchUser.return = .success(custom)

        // When
        let user = try await mock.fetchUser(id: "1")

        // Then
        #expect(user == custom)
    }

    @Test
    func throwsConfiguredError() async {
        // Given
        let mock = UserRepositoryMock()
        mock.fetchUser.return = .failure(URLError(.notConnectedToInternet))

        // When / Then
        await #expect(throws: URLError.self) {
            try await mock.fetchUser(id: "1")
        }
    }
}

// MARK: - Example: Parameter Inspection (multi-arg → labeled tuple)

private protocol PaymentService {
    func charge(amount: Double, currency: String)
}

@Spy
private class PaymentServiceMock: PaymentService {
    func charge(amount: Double, currency: String) {}
}

@Suite
struct ParameterInspectionExample {
    @Test
    func capturesMultipleArgumentsAsLabeledTuple() {
        // Given
        let mock = PaymentServiceMock()

        // When
        mock.charge(amount: 9.99, currency: "USD")

        // Then
        #expect(mock.charge.parameters?.amount == 9.99)
        #expect(mock.charge.parameters?.currency == "USD")
    }
}

// MARK: - Example: Completion Handler (closure parameter)

private protocol AuthService {
    func login(username: String, completion: @escaping (Result<String, any Error>) -> Void)
}

private class AuthServiceMock: AuthService {
    @AddSpy("login")
    func login(username: String, completion: @escaping (Result<String, any Error>) -> Void) {}
}

@Suite
struct CompletionHandlerExample {
    @Test
    func completionCallbackCanBeInvokedViaBody() {
        // Given
        let mock = AuthServiceMock()
        var receivedToken: String?
        mock.login.body { params in
            params.completion(.success("token"))
        }

        // When
        mock.login(username: "alice") { result in
            if case .success(let token) = result { receivedToken = token }
        }

        // Then
        #expect(receivedToken == "token")
    }
}

// MARK: - Example: Await of method execution

private protocol UserService {
    func auth(username: String, completion: @escaping (Result<String, any Error>) -> Void)
    func send(with token: String, message: String)
}

private final class UserServiceMock: UserService, Sendable {
    @AddSpy
    func auth(username: String, completion: @escaping (Result<String, any Error>) -> Void) {}
    @AddSpy
    func send(with token: String, message: String) {}
}

@Suite
struct MethodAwaitExample {
    @Test
    func waitUntilMethodWillBeExecuted() async {
        // Given
        let mock = UserServiceMock()
        mock.auth.body { params in
            params.completion(.success("token"))
        }

        // When
        let future = mock.send.await()
        mock.auth(username: "Alice") { result in
            Task {
                guard case let .success(token) = result else { return }

                mock.send(with: token, message: "Hello, world!")
            }
        }

        // Then
        await future.value
        #expect(mock.send.parameters?.token == "token")
        #expect(mock.send.parameters?.message == "Hello, world!")
    }
}
