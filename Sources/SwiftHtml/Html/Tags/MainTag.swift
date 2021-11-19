//
//  MainTag.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func main() -> Node {
        Node(type: .standard, name: "main")
    }
}

/// The `<main>` tag specifies the main content of a document.
///
/// The content inside the `<main>` element should be unique to the document. It should not contain any content that is repeated across documents such as sidebars, navigation links, copyright information, site logos, and search forms.
///
/// **Note:** There must not be more than one `<main>` element in a document. The `<main>` element must NOT be a descendant of an `<article>`, `<aside>`, `<footer>`, `<header>`, or `<nav>` element.
public struct Main: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .main()
    }

//    public init(@TagBuilder _ builder: () -> [Tag]) {
//        self.init(builder().map(\.node))
//    }
}


