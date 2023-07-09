//
//  Ellipse.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse
open class Ellipse: Tag {

    public init(cx: Double,
                cy: Double,
                rx: Double,
                ry: Double,
                pathLength: Double? = nil) {
        super.init(node: .init(name: Self.name))
        setAttributes([
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "rx", value: rx.preciseString),
            .init(key: "ry", value: ry.preciseString),
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
