//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func ins(_ contents: String) -> Node {
        Node(type: .standard, name: "ins", contents: contents)
    }
}

/// The <ins> tag defines a text that has been inserted into a document. Browsers will usually underline inserted text.
///
/// Tip: Also look at the <del> tag to markup deleted text.
public struct Ins: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .ins(contents)
    }
}
