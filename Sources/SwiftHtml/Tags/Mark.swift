//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func mark(_ contents: String) -> Node {
        Node(type: .standard, name: "mark", contents: contents)
    }
}

/// The <mark> tag defines text that should be marked or highlighted.
public struct Mark: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .mark(contents)
    }
}
