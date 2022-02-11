//
//  Path.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//


open class Path: Tag {

    public init(_ d: String) {
        super.init()
        setAttributes([
            .init(key: "d", value: d),
        ])
    }
}
