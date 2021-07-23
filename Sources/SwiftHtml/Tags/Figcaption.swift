//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func figcaption(_ contents: String) -> Node {
        Node(type: .standard, name: "figcaption", contents: contents)
    }
}

/// The <figcaption> tag defines a caption for a <figure> element.
///
/// The <figcaption> element can be placed as the first or last child of the <figure> element.
public struct Figcaption: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .figcaption(contents)
    }
}
