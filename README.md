<p align="center">
   <img height="300" alt="image" src="https://github.com/user-attachments/assets/9ab4cdf5-12e4-42df-824b-e5ab1f4b5faa" />
</p>

# TestableSpy - Macro

A Swift macro system for easy spy/mock creation in tests.

## Basic Usage

Mark each method with `@AddSpy`:

```swift
class MyMock: MyProtocol {
    @AddSpy
    func fetchUser(id: Int) async throws -> User {
        spy.fetchUser(id: id)  // This body will be replaced by the macro
    }
}
```

### Then in Tests

```swift
func testFetchUser() async throws {
    let mock = MyMock()
    
    // Setup what the spy should return
    mock.fetchUser.return = .success(User(id: 1, name: "Alice"))
    // or you can provide a custom body
    mock.fetchUser.body { id in
       return User(id: id, name: "Alice")
    }
    
    // Call the method
    let user = try await mock.fetchUser(id: 1)
    let expectedID = 1
    // Verify
    XCTAssertEqual(mock.spy.fetchUser.callCount, 1)
    XCTAssertEqual(mock.spy.fetchUser.parameters, expectedID)
    XCTAssertEqual(user.name, "Alice")
}
```

## Generated Code

**Input:**
```swift
@AddSpy
func fetchUser(id: Int) async throws -> User {
    User(id: id, name: "Stub")  // Optional fallback
}
```

**Expanded:**
```swift

let fetchUser: SpyWrapper<Int, Result<User, Error>> = .init()

func fetchUser(id: Int) async throws -> User {
    if fetchUser.hasBody || fetchUser.return != nil {
        //  Will execute with custom body or return value
        return try await fetchUser.execute(parameters: id).get()
    }
    // Otherwise fallback into user's body
    return User(id: id, name: "Stub")
}

```

The macro generates:
1. **Spy property** - `SpyWrapper<Parameters, ReturnType>` for tracking calls
2. **Method body** - Checks spy first, then falls back to your implementation

## Alternatives

- https://github.com/Matejkob/swift-spyable
- https://github.com/frugoman/SwiftMocks
- https://github.com/Kolos65/Mockable
