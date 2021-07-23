//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func p(_ contents: String) -> Node {
        Node(type: .standard, name: "p", contents: contents)
    }
}

public struct P: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .p(contents)
    }
}