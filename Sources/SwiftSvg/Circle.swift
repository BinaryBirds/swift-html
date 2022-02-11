//
//  Circle.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//


open class Circle: Tag {

    public init(cx: Double, cy: Double, r: Double) {
        super.init()
        setAttributes([
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "r", value: r.preciseString),
        ])
    }
}
