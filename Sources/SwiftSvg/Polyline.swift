//
//  Polyline.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

open class Polyline: Tag {

    public init(_ points: [Double]) {
        super.init()
        setAttributes([
            .init(key: "points", value: points.map(\.preciseString).joined(separator: " ")),
        ])
    }
}
