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

public func ImageRendering(_ value: String) -> Property {
    Property(name: "image-rendering", value: value)
}

/// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
public func ImageRendering(_ value: ImageRenderingValue = .auto) -> Property {
    ImageRendering(value.rawValue)
}
