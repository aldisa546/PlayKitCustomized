// swift-tools-version:5.3

import PackageDescription

let package = Package( 
    name: "PlayKitCustomized",
    platforms: [.iOS(.v14)],
    products: [.library(name: "PlayKitCustomized",
                        targets: ["PlayKitCustomized"])],
    dependencies: [
        .package(url: "https://github.com/imberezin/kSwiftyJSON.git", .upToNextMajor(from: "5.0.8")),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", .upToNextMajor(from: "7.1.5")),
        .package(name: "PlayKitUtils",
                 url: "https://github.com/kaltura/playkit-ios-utils.git",
                 .upToNextMinor(from: "0.7.0")),
        .package(name: "KalturaNetKit",
                 url: "https://github.com/kaltura/netkit-ios.git",
                 .upToNextMinor(from: "1.7.0")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "7.5.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "13.3.0")),
    ],
    targets: [.target(name: "PlayKitCustomized",
                      dependencies:
                        [
                            "kSwiftyJSON",
                            "XCGLogger",
                            .product(name: "PlayKitUtils", package: "PlayKitUtils"),
                            .product(name: "KalturaNetKit", package: "KalturaNetKit"),
                        ],
                      path: "Classes/"),
    ]
)
