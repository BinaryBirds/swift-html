//
//  Ellipse.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

open class Ellipse: Tag {

    public init(cx: Double, cy: Double, rx: Double, ry: Double) {
        super.init(Node(type: .standard, name: "ellipse", attributes: [
            .init(key: "cx", value: cx.preciseString),
            .init(key: "cy", value: cy.preciseString),
            .init(key: "rx", value: rx.preciseString),
            .init(key: "ry", value: ry.preciseString),
        ]))
        
    }
}
