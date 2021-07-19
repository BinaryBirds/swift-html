//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    private static var name = "li"
    
    static func li(_ contents: String) -> Node {
        Node(type: .standard, name: name, contents: contents)
    }
    
    static func li(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: name, children: children)
    }
}

public struct Li: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .li(contents)
    }
    
    public init(_ children: [Node] = []) {
        self.node = .li(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
