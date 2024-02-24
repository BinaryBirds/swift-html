//
//  Svg.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element
open class Svg: Tag {

}

extension Svg {

    public func width(_ value: Int) -> Self {
        attribute("width", String(value))
    }

    public func height(_ value: Int) -> Self {
        attribute("height", String(value))
    }

    public func viewBox(minX: Int, minY: Int, width: Int, height: Int) -> Self {
        let value = [minX, minY, width, height].map(String.init)
            .joined(separator: " ")
        return attribute("viewBox", value)
    }

    public func fill(_ value: String) -> Self {
        attribute("fill", value)
    }

    public func stroke(_ value: String) -> Self {
        attribute("stroke", value)
    }

    public func strokeWidth(_ value: Int) -> Self {
        attribute("stroke-width", String(value))
    }

    public func strokeLinecap(_ value: String) -> Self {
        attribute("stroke-linecap", value)
    }

    public func strokeLinejoin(_ value: String) -> Self {
        attribute("stroke-linejoin", value)
    }
}
