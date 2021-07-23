//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func figure(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "figure", children: children)
    }
}

/// The <figure> tag specifies self-contained content, like illustrations, diagrams, photos, code listings, etc.
///
/// While the content of the <figure> element is related to the main flow, its position is independent of the main flow, and if removed it should not affect the flow of the document.
///
/// Tip: The <figcaption> element is used to add a caption for the <figure> element.
public struct Figure: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .article(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

