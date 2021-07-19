//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct Link: Tag {
    var node: Node

    init(attributes: [Attribute] = []) {
        node = .init(type: .empty, name: "link", value: nil, attributes: attributes, children: [])
    }

    func href(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "href", value: url))
        return .init(attributes: attributes)
    }
    
    func rel(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "rel", value: url))
        return .init(attributes: attributes)
    }
}

