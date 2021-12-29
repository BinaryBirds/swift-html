//
//  Line.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

open class Line: Tag {

    public init(x1: Int, y1: Int, x2: Int, y2: Int) {
        super.init(Node(type: .standard, name: "line", attributes: [
            .init(key: "x1", value: String(x1)),
            .init(key: "y1", value: String(y1)),
            .init(key: "x2", value: String(x2)),
            .init(key: "y2", value: String(y2)),
        ]))
        
    }
}
