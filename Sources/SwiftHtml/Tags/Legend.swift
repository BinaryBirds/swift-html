//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func legend(_ contents: String) -> Node {
        Node(type: .standard, name: "legend", contents: contents)
    }
}

/// The <legend> tag defines a caption for the <fieldset> element.
public struct Legend: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .legend(contents)
    }
}
