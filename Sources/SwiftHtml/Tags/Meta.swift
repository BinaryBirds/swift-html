//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func meta() -> Node {
        Node(type: .empty, name: "meta")
    }
}

public struct Meta: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .meta()
    }
    
    public func name(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: url)))
    }
    
    public func content(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "content", value: url)))
    }
}
