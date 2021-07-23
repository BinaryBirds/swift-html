//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func dfn(_ contents: String) -> Node {
        Node(type: .standard, name: "dfn", contents: contents)
    }
}

/// The <dfn> tag stands for the "definition element", and it specifies a term that is going to be defined within the content.
///
/// The nearest parent of the <dfn> tag must also contain the definition/explanation for the term.
///
/// The term inside the <dfn> tag can be any of the following:
/// <p><dfn>HTML</dfn> is the standard markup language for creating web pages.</p>
public struct Dfn: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .dfn(contents)
    }
}
