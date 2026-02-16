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

Generated: 2026-02-16 02:06
100 mock classes (async throws) · 100 assertions executed

**WithMacro** = TestableSpy + @AddSpy (swift-syntax macro plugin)  
**WithoutMacro** = zero dependencies, plain hand-written spy structs

### Results

| Configuration       | WithMacro   | WithoutMacro | Δ          | Overhead |
|---------------------|------------:|-------------:|-----------:|---------:|
| Clean Debug         |    28.120 s |     24.737 s |   +3.383 s |   +13.7% |
| Clean Release       |   146.558 s |      4.333 s | +142.225 s | +3282.6% |
| Incremental Debug   |     1.992 s |     992.4 ms |   +0.999 s |  +100.7% |
| Incremental Release |   119.029 s |      1.902 s | +117.128 s | +6159.7% |

## Alternatives

### swift-spyable
sources: https://github.com/Matejkob/swift-spyable

Cons:
- Protocol annotated with the macro - dependency leak
- No support for overloaded methods (same name, different signature)

### SwiftMocks
source: https://github.com/frugoman/SwiftMocks

Cons:
- Doesn't support async, throwable and generic param functions

### Mockable
source: https://github.com/Kolos65/Mockable

Cons:
- Protocol annotated with the macro - dependency leak

## Useful Documents

- https://docs.swift.org/swift-book/documentation/the-swift-programming-language/macros/
- https://tuist.dev/blog/2024/08/26/swift-macros
