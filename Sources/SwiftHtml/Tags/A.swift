//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func a(_ value: String) -> Node {
        Node(type: .standard, name: "a", contents: value)
    }
}

public struct A: Tag {

    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init(_ value: String) {
        self.init(.a(value))
    }

    public func href(_ url: String) -> Self {
        var newNode = node
        newNode.attributes.append(.init(key: "href", value: url))
        return .init(newNode)
    }
}
