// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SignalR-Swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SignalR-Swift",
            targets: ["SignalR-Swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", "5.0.0"..<"6.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", "3.0.0"..<"3.1.2")        
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SignalR-Swift", dependencies: ["Alamofire", "Starscream"]),
    ]
)
