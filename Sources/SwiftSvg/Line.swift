//
//  Line.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

open class Line: Tag {

    public init(x1: Double, y1: Double, x2: Double, y2: Double) {
        super.init()
        setAttributes([
            .init(key: "x1", value: x1.preciseString),
            .init(key: "y1", value: y1.preciseString),
            .init(key: "x2", value: x2.preciseString),
            .init(key: "y2", value: y2.preciseString),
        ])
        
    }
}
