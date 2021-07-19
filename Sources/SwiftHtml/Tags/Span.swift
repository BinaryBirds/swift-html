//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func span(_ contents: String) -> Node {
        Node(type: .standard, name: "span", contents: contents)
    }
}

public struct Span: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .span(contents)
    }
}
