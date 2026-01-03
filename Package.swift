// swift-tools-version:6.0
import PackageDescription

let defaultSwiftSettings: [SwiftSetting] = [
    .swiftLanguageMode(.v6),
    .enableExperimentalFeature("AvailabilityMacro=SwiftWebStandards 1.0:macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0"),

    // https://github.com/swiftlang/swift-evolution/blob/main/proposals/0444-member-import-visibility.md
    .enableUpcomingFeature("MemberImportVisibility"),
]

let package = Package(
    name: "swift-web-standards",
    products: [
        .library(name: "DOM", targets: ["DOM"]),
        .library(name: "SGML", targets: ["SGML"]),
        .library(name: "HTML", targets: ["HTML"]),
        .library(name: "RSS", targets: ["RSS"]),
        .library(name: "Sitemap", targets: ["Sitemap"]),
        .library(name: "SVG", targets: ["SVG"]),
        .library(name: "MIME", targets: ["MIME"]),
        .library(name: "WebStandards", targets: ["WebStandards"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections", .upToNextMinor(from: "1.3.0")),
    ],
    targets: [
        .target(
            name: "DOM",
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SGML",
            dependencies: [
                .product(name: "Collections", package: "swift-collections"),
                .target(name: "DOM"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "HTML",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "RSS",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "Sitemap",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SVG",
            dependencies: [
                .target(name: "SGML"),
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "CSS",
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "MIME",
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "WebStandards",
            dependencies: [
                .target(name: "DOM"),
                .target(name: "MIME"),
                .target(name: "SGML"),
                .target(name: "CSS"),
                .target(name: "HTML"),
                .target(name: "RSS"),
                .target(name: "Sitemap"),
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
            name: "HTMLTests",
            dependencies: [
                .target(name: "HTML"),
            ]
        ),
        .testTarget(
            name: "RSSTests",
            dependencies: [
                .target(name: "RSS"),
            ]
        ),
        .testTarget(
            name: "SitemapTests",
            dependencies: [
                .target(name: "Sitemap"),
            ]
        ),
        .testTarget(
            name: "SVGTests",
            dependencies: [
                .target(name: "SVG"),
            ]
        ),
        .testTarget(
            name: "CSSTests",
            dependencies: [
                .target(name: "CSS"),
            ]
        ),
        .testTarget(
            name: "MIMETests",
            dependencies: [
                .target(name: "MIME"),
            ]
        ),
        .testTarget(
            name: "WebStandardsTests",
            dependencies: [
                .target(name: "WebStandards"),
            ]
        ),
    ]
)
