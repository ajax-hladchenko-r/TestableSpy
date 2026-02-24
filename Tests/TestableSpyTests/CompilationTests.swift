//
// CompilationTests.swift
//

import TestableSpy

protocol Foo {
    func doSomething(first: Int, second: Double) async throws
    func doSomething(first: Int, second: Double) async throws -> String
    func doSomething(event: String) async
    func doSomething(event: String, _ closure: @escaping (String) -> Void) async
    func doSomething(
        with id: String,
        role: String,
        completion: @escaping (Result<Bool, any Error>) -> Void
    )
}

// MARK: - Mock

@Spy
class FooMock: Foo {
    @AddSpy
    func doSomething(first: Int, second: Double) async throws {}

    @AddSpy("doSomething_return_string")
    func doSomething(first: Int, second: Double) async throws -> String {
        "Stub"
    }

    @AddSpy("doSomethingEvent")
    func doSomething(event: String) async {}

    @AddSpy("doSomethingClosure")
    func doSomething(event value: String, _ closure: @escaping (String) -> Void) async {}

    @AddSpy("doSomethingClosureResult")
    public func doSomething(
        with id: String,
        role: String,
        completion: @escaping (Result<Bool, any Error>) -> Void
    ) {}
}
