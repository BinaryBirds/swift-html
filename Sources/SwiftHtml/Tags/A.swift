//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation


struct A: Tag {
    var node: Node

    init(_ value: String?, attributes: [Attribute] = []) {
        node = .init(type: .standard, name: "a", value: value, attributes: attributes, children: [])
    }

    func href(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "href", value: url))
        return .init(node.value, attributes: attributes)
    }
}

