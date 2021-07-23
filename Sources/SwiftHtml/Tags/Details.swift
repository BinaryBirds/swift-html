//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func details(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "details", children: children)
    }
}

/// The <details> tag specifies additional details that the user can open and close on demand.
///
/// The <details> tag is often used to create an interactive widget that the user can open and close. By default, the widget is closed. When open, it expands, and displays the content within.
///
/// Any sort of content can be put inside the <details> tag.
///
/// Tip: The <summary> tag is used in conjuction with <details> to specify a visible heading for the details.
public struct Details: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .details(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    
    /// Specifies that the details should be visible (open) to the user
    public func open() -> Self {
        .init(node.addOrReplace(Attribute(key: "open")))
    }
}

