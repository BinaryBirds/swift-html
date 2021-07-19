//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct P: Tag {
    var node: Node

    init(_ value: String?) {
        node = .init(type: .standard, name: "p", value: value, attributes: [], children: [])
    }
}

