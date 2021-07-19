//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    private static var name = "th"
    
    static func th(_ contents: String) -> Node {
        Node(type: .standard, name: name, contents: contents)
    }
    
    static func th(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: name, children: children)
    }
}

public struct Th: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .th(contents)
    }
    
    public init(_ children: [Node] = []) {
        self.node = .th(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
