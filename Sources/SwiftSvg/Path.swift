//
//  Path.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//


public final class Path: Tag {

    public init(_ d: String) {
        super.init(Node(type: .standard, name: "path", attributes: [
            .init(key: "d", value: d),
        ]))
    }
}
