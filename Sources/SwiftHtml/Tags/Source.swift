//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation


public extension Node {

    static func source() -> Node {
        Node(type: .empty, name: "source")
    }
}

public struct Source: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .source()
    }
}
