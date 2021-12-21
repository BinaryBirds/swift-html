//
//  Rect.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

public final class Rect: Tag {

    public init(x: Int, y: Int, width: Int, height: Int) {
        super.init(Node(type: .standard, name: "rect", attributes: [
            .init(key: "x", value: String(x)),
            .init(key: "y", value: String(y)),
            .init(key: "width", value: String(width)),
            .init(key: "height", value: String(height)),
        ]))
    }
}
