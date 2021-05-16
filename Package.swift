// swift-tools-version:5.3
// Version 5.3 required for Swift Argument Parser. Supports Catalina+

import PackageDescription

let package = Package(
    // This name is normally synonymous with a hosted git repo
    name: "testrepo1",

    platforms: [.macOS(.v10_12)],

    // The executables or libraries produced by this project
    products: [
        // This is the call name of the executable that is produced
        .executable(name: "testrepo1",

            // The targets named here are the modules listed in the targets section
            targets: ["testrepo1"]),
    ],

    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .exact("0.4.3")),
    ],

    targets: [
        // Create module targets

        .target(
            // This is the module name. It is used by the product section targets
            // and by any test target
            name: "testrepo1",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"), 
            ],
            path: "Sources/" // Omit or override if needed
        ),

        // Test target omitted here
        //.testTarget(name: "testrepo1Tests", dependencies: ["testrepo1"]),
    ],

    swiftLanguageVersions: [ .v5 ]
)