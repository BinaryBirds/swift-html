//
//  Nav.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<nav>` tag defines a set of navigation links.
/// 
/// Notice that NOT all links of a document should be inside a `<nav>` element. The `<nav>` element is intended only for major block of navigation links.
/// 
/// Browsers, such as screen readers for disabled users, can use this element to determine whether to omit the initial rendering of this content.
public final class Nav: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "nav"), tags: builder())
    }
}



