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
        .init(node.addOrReplace(Attribute(key: "href", value: url)))
    }
    
    public func rel(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "rel", value: url)))
    }
}
