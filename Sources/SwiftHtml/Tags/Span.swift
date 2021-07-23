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

/// The <span> tag is an inline container used to mark up a part of a text, or a part of a document.
///
/// The <span> tag is easily styled by CSS or manipulated with JavaScript using the class or id attribute.
///
/// The <span> tag is much like the <div> element, but <div> is a block-level element and <span> is an inline element.
public struct Span: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .span(contents)
    }
}
