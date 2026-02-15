<p align="center">
   <img height="300" alt="image" src="https://github.com/user-attachments/assets/9ab4cdf5-12e4-42df-824b-e5ab1f4b5faa" />
</p>

# TestableSpy

A Swift macro that generates spy/mock implementations for protocol methods, eliminating boilerplate in tests.

## Installation

Add the package via Swift Package Manager:

```swift
.package(url: "https://github.com/ajax-repos/testable-spy.git", from: "1.0.0")
```

Then add `TestableSpy` as a dependency to your test target:

```swift
.testTarget(
    name: "MyAppTests",
    dependencies: ["TestableSpy"]
)
```

**Platforms:** macOS 15+, iOS 16+, tvOS 13+, watchOS 6+, Mac Catalyst 13+

---

## Basic Usage

Annotate each method in your mock with `@AddSpy`:

```swift
import TestableSpy

class FooMock: Foo {
    @AddSpy
    func fetchUser(id: Int) async throws -> User {
        User(id: id, name: "Stub")  // Optional fallback body
    }
}
```

When two methods share the same name, provide a unique identifier:

```swift
@AddSpy("fetchUser_admin")
func fetchUser(id: Int, role: Role) async throws -> User {
    User(id: id, name: "Admin stub")
}
```

---

## What the Macro Generates

For each annotated method the macro generates:

1. **A spy property** — `SpyWrapper<Parameters, Return, Failure>` placed alongside the method
2. **A method body** — checks `isOverridden` first, then falls back to your implementation

**Input:**
```swift
@AddSpy
func fetchUser(id: Int) async throws -> User {
    User(id: id, name: "Stub")
}
```

**Expanded:**
```swift
func fetchUser(id: Int) async throws -> User {
    if fetchUser.isOverridden {
        return try await fetchUser.execute(parameters: id)
    } else {
        try await fetchUser.execute(parameters: id)
    }
    return User(id: id, name: "Stub")
}

let fetchUser: SpyWrapper<Int, User, any Error> = .init()
```

### Type mapping

| Method signature | `SpyWrapper<Parameters, Return, Failure>` |
|---|---|
| `func f(a: Int, b: String) async throws -> User` | `SpyWrapper<(Int, String), User, any Error>` |
| `func f(id: Int) async throws` | `SpyWrapper<Int, Void, any Error>` |
| `func f() async -> String` | `SpyWrapper<Void, String, Never>` |
| `func f(event: String)` | `SpyWrapper<String, Void, Never>` |
| `func f()` | `SpyWrapper<Void, Void, Never>` |

---

## SpyWrapper API

```swift
// Set a return value
mock.fetchUser.return = .success(User(id: 1, name: "Alice"))
mock.fetchUser.return = .failure(MyError.notFound)

// Set a custom async body
mock.fetchUser.body { id in
    return User(id: id, name: "Custom")
}

// Set a custom sync body
mock.fetchUser.body { id in
    return User(id: id, name: "Custom")
}

// Inspect calls
mock.fetchUser.callCount    // Int — number of invocations
mock.fetchUser.parameters   // Parameters! — last call's parameters

// Check if a return value or body is configured
mock.fetchUser.isOverridden // Bool

// Wait (async) until the spy is called at least once
await mock.fetchUser.wait()
```

---

## Example Test

```swift
func testFetchUser() async throws {
    let mock = FooMock()

    mock.fetchUser.return = .success(User(id: 1, name: "Alice"))

    let user = try await mock.fetchUser(id: 1)

    #expect(mock.fetchUser.callCount == 1)
    #expect(mock.fetchUser.parameters == 1)
    #expect(user.name == "Alice")
}
```

---


## TestableSpy Benchmark Results

Generated: 2026-02-15 19:22
100 mock classes (async throws) · 100 assertions executed

**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)  
**WithoutMacro** = zero dependencies, plain hand-written spy structs

### Results

| Configuration       | WithMacro   | WithoutMacro | Δ          | Overhead |
|---------------------|------------:|-------------:|-----------:|---------:|
| Clean Debug         |    24.449 s |     19.909 s |   +4.540 s |   +22.8% |
| Clean Release       |   139.109 s |      4.131 s | +134.978 s | +3267.8% |
| Incremental Debug   |     2.141 s |     951.4 ms |   +1.189 s |  +125.0% |
| Incremental Release |   115.264 s |      1.737 s | +113.527 s | +6536.0% |

## Alternatives

- https://github.com/Matejkob/swift-spyable
- https://github.com/frugoman/SwiftMocks
- https://github.com/Kolos65/Mockable

## Useful Documents

- https://docs.swift.org/swift-book/documentation/the-swift-programming-language/macros/
- https://tuist.dev/blog/2024/08/26/swift-macros
