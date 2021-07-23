//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func s(_ contents: String) -> Node {
        Node(type: .standard, name: "s", contents: contents)
    }
}

/// The <s> tag specifies text that is no longer correct, accurate or relevant. The text will be displayed with a line through it.
///
/// The <s> tag should not be used to define deleted text in a document, use the <del> tag for that.
public struct S: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .s(contents)
    }

}
