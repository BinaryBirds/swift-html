//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct Meta: Tag {
    var node: Node

    init(attributes: [Attribute] = []) {
        node = .init(type: .empty, name: "meta", value: nil, attributes: attributes, children: [])
    }

    func name(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "name", value: url))
        return .init(attributes: attributes)
    }
    
    func content(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "content", value: url))
        return .init(attributes: attributes)
    }
}

