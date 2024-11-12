// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPluginPhonecall",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorPluginPhonecall",
            targets: ["PhoneCallPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "PhoneCallPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/PhoneCallPlugin"),
        .testTarget(
            name: "PhoneCallPluginTests",
            dependencies: ["PhoneCallPlugin"],
            path: "ios/Tests/PhoneCallPluginTests")
    ]
)
