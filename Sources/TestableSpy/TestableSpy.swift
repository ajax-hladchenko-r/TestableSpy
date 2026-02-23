// MARK: - Macro Definition

@attached(peer, names: arbitrary)
@attached(body)
public macro AddSpy() =
    #externalMacro(
        module: "TestableSpyMacros",
        type: "AddSpyMacro"
    )

@attached(peer, names: arbitrary)
@attached(body)
public macro AddSpy(_ name: String) =
    #externalMacro(
        module: "TestableSpyMacros",
        type: "AddSpyMacro"
    )

// MARK: - Wrapper

public final class SpyWrapper<
    Parameters,
    Return: Sendable,
    Failure: Error
>: @unchecked Sendable {
    public typealias ReturnType = Result<Return, Failure>
    private var awaiters: [CheckedContinuation<Void, Never>] = []

    private var bodyAsync: (@Sendable (Parameters) async throws -> Return)?
    private var body: (@Sendable (Parameters) throws -> Return)?

    public private(set) var callCount: Int = 0
    public private(set) var parameters: Parameters!
    public private(set) var allParameters: [Parameters] = []

    public var `return`: ReturnType!
    public var isOverridden: Bool { body != nil || bodyAsync != nil || self.return != nil }

    public init() {}

    func wasCalled() {
        callCount += 1
        notify()
    }

    private func notify() {
        for waiting in awaiters {
            waiting.resume()
        }
        awaiters.removeAll()
    }

    public func body(
        _ closure: @escaping @Sendable (Parameters) async throws -> Return
    ) {
        bodyAsync = closure
    }

    public func body(
        _ closure: @escaping @Sendable (Parameters) throws -> Return
    ) {
        body = closure
    }

    public func wait() async {
        await withCheckedContinuation { continuation in
            awaiters.append(continuation)
        }
    }
}

public extension SpyWrapper where Failure == Never {
    func execute(parameters: Parameters) async -> Return {
        defer { wasCalled() }

        self.parameters = parameters
        allParameters.append(parameters)

        if let bodyAsync {
            return try! await bodyAsync(parameters)  // swiftlint:disable:this force_try
        }

        if let body {
            return try! body(parameters)  // swiftlint:disable:this force_try
        }

        return self.return.get()
    }

    func execute(parameters: Parameters) -> Return {
        defer { wasCalled() }

        self.parameters = parameters
        allParameters.append(parameters)

        if let body {
            return try! body(parameters)  // swiftlint:disable:this force_try
        }

        return self.return.get()
    }
}

public extension SpyWrapper {
    func execute(parameters: Parameters) async throws -> Return {
        defer { wasCalled() }

        self.parameters = parameters
        allParameters.append(parameters)

        if let bodyAsync {
            return try await bodyAsync(parameters)
        }

        if let body {
            return try body(parameters)
        }

        return try self.return.get()
    }

    func execute(parameters: Parameters) throws -> Return {
        defer { wasCalled() }

        self.parameters = parameters
        allParameters.append(parameters)

        if let body {
            return try body(parameters)
        }

        return try self.return.get()
    }
}
