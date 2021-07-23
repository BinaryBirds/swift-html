//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func caption(_ contents: String) -> Node {
        Node(type: .standard, name: "caption", contents: contents)
    }
}

/// The <caption> tag defines a table caption.
/// 
/// The <caption> tag must be inserted immediately after the <table> tag.
/// 
/// Tip: By default, a table caption will be center-aligned above a table. However, the CSS properties text-align and caption-side can be used to align and place the caption.
public struct Caption: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .caption(contents)
    }
}
