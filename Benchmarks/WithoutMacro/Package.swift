// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BenchmarkWithoutMacro",
    platforms: [.macOS(.v13)],
    targets: [
        .executableTarget(name: "BenchmarkNoMacro")
    ]
)
