import ProjectDescription

let project = Project(
    name: "Project",
    targets: [
        .target(
            name: "Project",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.WithoutMacro",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": ""
                    ]
                ]
            ),
            sources: ["Project/Sources/**"],
            resources: ["Project/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ProjectTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.WithoutMacroTests",
            infoPlist: .default,
            sources: ["Project/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Project")]
        )
    ]
)
