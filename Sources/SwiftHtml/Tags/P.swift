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

/// The <p> tag defines a paragraph.
/// 
/// Browsers automatically add a single blank line before and after each <p> element.
/// 
/// Tip: Use CSS to style paragraphs.
public struct P: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .p(contents)
    }
}
