// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ReactiveCocoa",
    platforms: [.iOS(.v8), .watchOS(.v5)],
    products: [
        .library(name: "ReactiveCocoa", targets: ["ReactiveCocoa"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", .branch("spm-platforms"))
    ],
    targets: [
        .target(
            name: "ReactiveCocoa",
            dependencies: ["ReactiveSwift"],
            path: "ReactiveCocoa",
            exclude: ["ObjCRuntime", "AppKit", "WatchKit"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
