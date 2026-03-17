// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TUIIntro",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/phranck/TUIkit.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "TUIIntro",
            dependencies: [
                .product(name: "TUIkit", package: "TUIkit")
            ],
            path: "Sources"
        )
    ]
)
