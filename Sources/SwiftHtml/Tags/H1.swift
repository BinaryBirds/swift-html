//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct H1: Tag {
    var node: Node

    init(_ value: String?) {
        node = .init(type: .standard, name: "h1", value: value, attributes: [], children: [])
    }
}

