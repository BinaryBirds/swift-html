//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func summary(_ contents: String) -> Node {
        Node(type: .standard, name: "summary", contents: contents)
    }
}

/// The <summary> tag defines a visible heading for the <details> element. The heading can be clicked to view/hide the details.
///
/// Note: The <summary> element should be the first child element of the <details> element.
public struct Summary: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .summary(contents)
    }
}
