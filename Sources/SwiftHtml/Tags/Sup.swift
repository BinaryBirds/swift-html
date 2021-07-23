//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func sup(_ contents: String) -> Node {
        Node(type: .standard, name: "sup", contents: contents)
    }
}

/// The <sup> tag defines superscript text. Superscript text appears half a character above the normal line, and is sometimes rendered in a smaller font. Superscript text can be used for footnotes, like WWW[1].
///
/// Tip: Use the <sub> tag to define subscript text.
public struct Sup: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .label(contents)
    }
}
