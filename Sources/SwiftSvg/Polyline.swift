//
//  Polyline.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline
open class Polyline: Tag {

    public init(_ points: [Double], pathLength: Double? = nil) {
        super.init()
        setAttributes([
            .init(
                key: "points",
                value: points.map(\.preciseString).joined(separator: " ")
            )
        ])
        attribute("pathLength", pathLength?.preciseString)
    }
}
