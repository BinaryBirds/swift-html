//
//  Rect.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect
open class Rect: Tag {

    public init(x: Double,
                y: Double,
                width: Double,
                height: Double,
                rx: Double? = nil,
                ry: Double? = nil,
                pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "x", value: x.preciseString),
            .init(key: "y", value: y.preciseString),
            .init(key: "width", value: width.preciseString),
            .init(key: "height", value: height.preciseString),
        ])
        attribute("rx", rx?.preciseString)
        attribute("ry", ry?.preciseString)
        attribute("pathLength", pathLength?.preciseString)
    }
}
