//
//  Line.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line
open class Line: StandardTag {
    
    override open class var name: String { .init(Line.self) }

    public init(x1: Double,
                y1: Double,
                x2: Double,
                y2: Double,
                pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "x1", value: x1.preciseString),
            .init(key: "y1", value: y1.preciseString),
            .init(key: "x2", value: x2.preciseString),
            .init(key: "y2", value: y2.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
