//
//  Ellipse.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

public final class Ellipse: Tag {

    public init(cx: Int, cy: Int, rx: Int, ry: Int) {
        super.init(Node(type: .standard, name: "ellipse", attributes: [
            .init(key: "cx", value: String(cx)),
            .init(key: "cy", value: String(cy)),
            .init(key: "rx", value: String(rx)),
            .init(key: "ry", value: String(ry)),
        ]))
        
    }
}
