# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
make test            # Run all tests
make lint            # Run swiftlint + swift-format lint
make format          # Auto-fix formatting
make validate # Run tests + lint (pre-commit gate)
```

## What This Library Does

TestableSpy is a Swift macro library that eliminates spy/mock boilerplate in tests. Instead of writing tracking properties, counters, and return-value plumbing by hand, you annotate each mock method with `@AddSpy` and the macro generates it all.

The core design principle: **the macro attaches to individual methods on a mock class, not to the protocol**. This avoids leaking test infrastructure into production code.

### Problem It Solves

Writing mock classes in Swift requires repetitive boilerplate for every method:

```swift
// Without TestableSpy — written by hand for every method
class FooMock: Foo {
    var fetchUserCallCount = 0
    var fetchUserParameters: Int?
    var fetchUserReturn: Result<User, Error>!

    func fetchUser(id: Int) async throws -> User {
        fetchUserCallCount += 1
        fetchUserParameters = id
        return try fetchUserReturn.get()
    }
}
```

### How It Works

`@AddSpy` is a combined `BodyMacro + PeerMacro` attached to a method in a mock class:

1. **PeerMacro** generates a `SpyWrapper<Parameters, Return, Failure>` property alongside the method.
2. **BodyMacro** replaces the method body: if the spy has a configured return value or body closure, it routes the call through the spy; otherwise it uses the original method body as the default stub.

```swift
// Input
@AddSpy
func fetchUser(id: Int) async throws -> User {
    User(id: id, name: "Stub")  // default fallback
}

// Generated
func fetchUser(id: Int) async throws -> User {
    if fetchUser.isOverridden {
        return try await fetchUser.execute(parameters: id)
    } else {
        fetchUser.body { id in return User(id: id, name: "Stub") }
        return try await fetchUser.execute(parameters: id)
    }
}
let fetchUser: SpyWrapper<Int, User, any Error> = .init()
```

In tests, the spy property is used to configure behavior and assert calls:

```swift
mock.fetchUser.return = .success(User(id: 1, name: "Alice"))
let user = try await mock.fetchUser(id: 1)
#expect(mock.fetchUser.callCount == 1)
#expect(mock.fetchUser.parameters == 1)
```

### Overloaded Method Disambiguation

When two methods share the same name, pass a unique identifier to avoid a property name collision:

```swift
@AddSpy("fetchUser_byRole")
func fetchUser(id: Int, role: Role) async throws -> User { ... }
```

### SpyWrapper Generic Parameters

`SpyWrapper<Parameters, Return, Failure>`:
- **Parameters**: `Void` for no-arg, bare type for single-arg, labeled tuple for multi-arg
- **Return**: Raw return type or `Void`
- **Failure**: `any Error` for throwing functions, `Never` otherwise

`@escaping` is stripped from closure parameter types when used in the generic position (it is invalid there).

# Repository rules
- **ALWAYS** after end of your iteration run `make validate` and fix all warning and
errors
- **MUST** after major changes you need to keep update `CLAUDE.md` and `README.md` with relevant information.
