// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "BenchmarkWithMacro",
    platforms: [.macOS(.v15)],
    dependencies: [.package(path: "../..")],
    targets: [
        .executableTarget(
            name: "BenchmarkMacro",
            dependencies: [.product(name: "TestableSpy", package: "testable-spy")]
        )
    ]
)
