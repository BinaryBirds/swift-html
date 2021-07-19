//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func link() -> Node {
        Node(type: .empty, name: "link")
    }
}

public struct Link: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .link()
    }
    
    public func href(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "href", value: url)))
    }
    
    public func rel(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "rel", value: url)))
    }
}
