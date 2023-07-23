//
//  Ellipse.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse
open class Ellipse: EmptyTag {
    
    override open class var name: String { .init(Ellipse.self) }

    public init(cx: Double,
                cy: Double,
                rx: Double,
                ry: Double,
                pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "rx", value: rx.preciseString),
            .init(key: "ry", value: ry.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
