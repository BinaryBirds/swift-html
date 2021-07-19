//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public struct Link: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(attributes: [Attribute] = []) {
        node = .init(type: .empty, name: "link", contents: nil, attributes: attributes, children: [])
    }

    public func href(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "href", value: url))
        return .init(attributes: attributes)
    }
    
    public func rel(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "rel", value: url))
        return .init(attributes: attributes)
    }
}
