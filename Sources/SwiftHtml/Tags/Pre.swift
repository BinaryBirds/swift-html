//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func pre(_ contents: String) -> Node {
        Node(type: .standard, name: "pre", contents: contents)
    }
}

/// The <pre> tag defines preformatted text.
///
/// Text in a <pre> element is displayed in a fixed-width font, and the text preserves both spaces and line breaks. The text will be displayed exactly as written in the HTML source code.
public struct Pre: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .pre(contents)
    }
}
