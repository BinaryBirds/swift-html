//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func comment(_ contents: String) -> Node {
        Node(type: .comment, contents: contents)
    }
}

public struct Comment: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .comment(contents)
    }
}
