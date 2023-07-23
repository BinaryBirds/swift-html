//
//  Circle.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle
open class Circle: StandardTag {
    
    override open class var name: String { .init(Circle.self) }

    public init(cx: Double,
                cy: Double,
                r: Double,
                pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "r", value: r.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
