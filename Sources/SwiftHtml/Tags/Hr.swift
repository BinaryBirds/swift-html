//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func hr() -> Node {
        Node(type: .empty, name: "hr")
    }
}

public struct Hr: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .hr()
    }
}
