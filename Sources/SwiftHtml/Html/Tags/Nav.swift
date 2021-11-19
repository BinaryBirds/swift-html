//
//  Nav.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func nav() -> Node {
        Node(type: .standard, name: "nav")
    }
}

/// The `<nav>` tag defines a set of navigation links.
/// 
/// Notice that NOT all links of a document should be inside a `<nav>` element. The `<nav>` element is intended only for major block of navigation links.
/// 
/// Browsers, such as screen readers for disabled users, can use this element to determine whether to omit the initial rendering of this content.
public struct Nav: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .nav()
    }

//    public init(@TagBuilder _ builder: () -> [Tag]) {
//        self.init(builder().map(\.node))
//    }
}



