//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func h2(_ contents: String) -> Node {
        Node(type: .standard, name: "h2", contents: contents)
    }
}

public struct H2: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .h2(contents)
    }
}
