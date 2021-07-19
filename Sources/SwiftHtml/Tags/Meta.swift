//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public struct Meta: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(attributes: [Attribute] = []) {
        node = .init(type: .empty, name: "meta", contents: nil, attributes: attributes, children: [])
    }

    public func name(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "name", value: url))
        return .init(attributes: attributes)
    }
    
    public func content(_ url: String) -> Self {
        var attributes = node.attributes
        attributes.append(.init(key: "content", value: url))
        return .init(attributes: attributes)
    }
}

