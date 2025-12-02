// swift-tools-version:6.0
import PackageDescription

let defaultSwiftSettings: [SwiftSetting] = [
    .swiftLanguageMode(.v6),
    .enableExperimentalFeature("AvailabilityMacro=SwiftHTML 1.0:macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0"),

    // https://github.com/swiftlang/swift-evolution/blob/main/proposals/0444-member-import-visibility.md
    .enableUpcomingFeature("MemberImportVisibility"),
]

let package = Package(
    name: "swift-html",
    products: [
        .library(name: "DOM", targets: ["DOM"]),
        .library(name: "SGML", targets: ["SGML"]),
        .library(name: "SwiftHTML", targets: ["SwiftHTML"]),
        .library(name: "SwiftRSS", targets: ["SwiftRSS"]),
        .library(name: "SwiftSitemap", targets: ["SwiftSitemap"]),
        .library(name: "SwiftSVG", targets: ["SwiftSVG"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/apple/swift-collections", .upToNextMinor(from: "1.3.0")),
    ],
    targets: [
        .target(
            name: "DOM",
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SGML",
            dependencies: [
//                .product(name: "Collections", package: "swift-collections"),
                .target(name: "DOM"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SwiftHTML",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SwiftRSS",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SwiftSitemap",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SwiftSVG",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        // MARK: - test
        .testTarget(
            name: "DOMTests",
            dependencies: [
                .target(name: "DOM"),
            ]
        ),
        .testTarget(
            name: "SGMLTests",
            dependencies: [
                .target(name: "SGML"),
            ]
        ),
        .testTarget(
            name: "SwiftHTMLTests",
            dependencies: [
                .target(name: "SwiftHTML"),
            ]
        ),
        .testTarget(
            name: "SwiftRSSTests",
            dependencies: [
                .target(name: "SwiftRSS"),
            ]
        ),
        .testTarget(
            name: "SwiftSitemapTests",
            dependencies: [
                .target(name: "SwiftSitemap"),
            ]
        ),
        .testTarget(
            name: "SwiftSVGTests",
            dependencies: [
                .target(name: "SwiftSVG"),
            ]
        ),
    ]
)
