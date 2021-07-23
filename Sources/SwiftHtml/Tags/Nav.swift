//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func nav(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "nav", children: children)
    }
}

/// The <nav> tag defines a set of navigation links.
/// 
/// Notice that NOT all links of a document should be inside a <nav> element. The <nav> element is intended only for major block of navigation links.
/// 
/// Browsers, such as screen readers for disabled users, can use this element to determine whether to omit the initial rendering of this content.
public struct Nav: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .nav(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}



