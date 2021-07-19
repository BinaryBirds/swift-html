//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func h3(_ contents: String) -> Node {
        Node(type: .standard, name: "h3", contents: contents)
    }
}

public struct H3: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .h3(contents)
    }
}
