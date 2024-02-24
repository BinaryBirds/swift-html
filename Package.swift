// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift-html",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "SwiftSgml", targets: ["SwiftSgml"]),
        .library(name: "SwiftSitemap", targets: ["SwiftSitemap"]),
        //        .library(name: "SwiftRss", targets: ["SwiftRss"]),
        //        .library(name: "SwiftHtml", targets: ["SwiftHtml"]),
        //        .library(name: "SwiftSvg", targets: ["SwiftSvg"]),
    ],
    targets: [
        .target(name: "SwiftSgml"),

        .target(
            name: "SwiftSitemap",
            dependencies: [
                .target(name: "SwiftSgml")
            ]
        ),
        //        .target(name: "SwiftRss", dependencies: [
        //            .target(name: "SwiftSgml")
        //        ]),
        //        .target(name: "SwiftHtml", dependencies: [
        //            .target(name: "SwiftSgml")
        //        ]),
        //        .target(name: "SwiftSvg", dependencies: [
        //            .target(name: "SwiftSgml")
        //        ]),
        //
        .testTarget(
            name: "SwiftSgmlTests",
            dependencies: [
                .target(name: "SwiftSgml")
            ]
        ),
        .testTarget(
            name: "SwiftSitemapTests",
            dependencies: [
                .target(name: "SwiftSitemap")
            ]
        ),
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
