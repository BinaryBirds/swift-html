// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "swift-html",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SwiftHtml", targets: ["SwiftHtml"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SwiftHtml", dependencies: [
            
        ]),
        .testTarget(name: "SwiftHtmlTests", dependencies: [
            .target(name: "SwiftHtml"),
        ]),
    ]
)


