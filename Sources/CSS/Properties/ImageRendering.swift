//
//  ImageRendering.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ImageRenderingValue: String {
    case auto
    case crispEdges = "crisp-edges"
    case pixelated
    case inherit
    case initial
    case revert
    case unset
}

public struct ImageRendering: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "image-rendering" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ImageRendering {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ImageRendering {

    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
    public init(_ value: ImageRenderingValue = .auto) {
        self.init(value.rawValue)
    }
}
