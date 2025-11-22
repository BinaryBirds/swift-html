// swift-tools-version:6.0
import PackageDescription

let defaultSwiftSettings: [SwiftSetting] = [
    .swiftLanguageMode(.v6),
    .enableExperimentalFeature("AvailabilityMacro=htmlSwift 1.0:macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0"),

    // https://github.com/swiftlang/swift-evolution/blob/main/proposals/0444-member-import-visibility.md
    .enableUpcomingFeature("MemberImportVisibility"),
]

let package = Package(
    name: "swift-html",
    products: [
        .library(name: "DOM", targets: ["DOM"]),
        .library(name: "SGML", targets: ["SGML"]),
        .library(name: "SwiftHTML", targets: ["SwiftHTML"]),
//        .library(name: "SwiftSitemap", targets: ["SwiftSitemap"]),
        //        .library(name: "SwiftRss", targets: ["SwiftRss"]),
        //        .library(name: "SwiftSvg", targets: ["SwiftSvg"]),
    ],
    targets: [
        .target(
            name: "DOM",
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SGML",
            dependencies: [
                .target(name: "DOM")
            ],
            swiftSettings: defaultSwiftSettings
        ),
        .target(
            name: "SwiftHTML",
            dependencies: [
                .target(name: "SGML")
            ],
            swiftSettings: defaultSwiftSettings
        ),

//        .target(
//            name: "SwiftSitemap",
//            dependencies: [
//                .target(name: "SwiftSgml")
//            ],
//            swiftSettings: defaultSwiftSettings
//        ),
//        .target(
//            name: "SwiftRss",
//            dependencies: [
//                .target(name: "SwiftSgml")
//            ],
//            swiftSettings: defaultSwiftSettings
//        ),
        //        .target(name: "SwiftHtml", dependencies: [
        //            .target(name: "SwiftSgml")
        //        ]),
        //        .target(name: "SwiftSvg", dependencies: [
        //            .target(name: "SwiftSgml")
        //        ]),
        //
        .testTarget(
            name: "DOMTests",
            dependencies: [
                .target(name: "DOM")
            ]
        ),
        .testTarget(
            name: "SGMLTests",
            dependencies: [
                .target(name: "SGML")
            ]
        ),
        .testTarget(
            name: "SwiftHTMLTests",
            dependencies: [
                .target(name: "SwiftHTML")
            ]
        ),
//        .testTarget(
//            name: "SwiftSitemapTests",
//            dependencies: [
//                .target(name: "SwiftSitemap")
//            ]
//        ),
//        .testTarget(name: "SwiftRssTests", dependencies: [
//            .target(name: "SwiftRss"),
//        ]),
        //        .testTarget(name: "SwiftHtmlTests", dependencies: [
        //            .target(name: "SwiftHtml"),
        //        ]),
        //        .testTarget(name: "SwiftSvgTests", dependencies: [
        //            .target(name: "SwiftSvg"),
        //        ]),

    ]
)
