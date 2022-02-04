//
//  Polygon.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

open class Polygon: Tag {

    public init(_ points: [Double]) {
        super.init(Node(type: .standard, name: "polygon", attributes: [
            .init(key: "points", value: points.map(\.preciseString).joined(separator: " ")),
        ]))
    }
}
