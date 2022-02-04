//
//  Rect.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

open class Rect: Tag {

    public init(x: Double, y: Double, width: Double, height: Double) {
        super.init(Node(type: .standard, name: "rect", attributes: [
            .init(key: "x", value: x.preciseString),
            .init(key: "y", value: y.preciseString),
            .init(key: "width", value: width.preciseString),
            .init(key: "height", value: height.preciseString),
        ]))
    }
}
