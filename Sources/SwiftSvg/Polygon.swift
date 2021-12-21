//
//  Polygon.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

public final class Polygon: Tag {

    public init(_ points: [Int]) {
        super.init(Node(type: .standard, name: "polygon", attributes: [
            .init(key: "points", value: points.map { String($0) }.joined(separator: " ")),
        ]))
    }
}
