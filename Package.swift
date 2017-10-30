// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Heimdallr",
    products: [
        .library(name: "Heimdallr", targets: ["Heimdallr-macOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/antitypical/Result.git", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
         .target(
            name: "Heimdallr-macOS",
            dependencies: ["Result"],
            exclude: [
                "HeimdallrTests",
                "script",
                "Carthage",
				"Heimdallr/Supporting Files"
                "bin"]),
    ],
    swiftLanguageVersions: [3, 4]
)
