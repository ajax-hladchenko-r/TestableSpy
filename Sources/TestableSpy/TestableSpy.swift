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

public final class SpyWrapper<Parameters: Sendable, Return: Sendable>: @unchecked Sendable {
    private var awaiters: [CheckedContinuation<Void, Never>] = []
    private var customBody: (@Sendable (Parameters) async -> Return)?

    public private(set) var callCount: Int = 0
    public private(set) var parameters: Parameters!

    public var `return`: Return!
    public var hasBody: Bool { customBody != nil }

    public init() {}

    private func wasCalled() {
        callCount += 1
        notify()
    }

    private func notify() {
        defer { awaiters.removeAll() }
        for waiting in awaiters {
            waiting.resume()
        }
    }

    @discardableResult
    public func execute(parameters: Parameters) async -> Return {
        defer { wasCalled() }

        self.parameters = parameters

        if let customBody {
            return await customBody(parameters)
        }

        return self.return
    }

    public func body(
        _ closure: @escaping @Sendable (Parameters) async -> Return
    ) {
        customBody = closure
    }

    public func wait() async {
        await withCheckedContinuation { continuation in
            awaiters.append(continuation)
        }
    }
}
