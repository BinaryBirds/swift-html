//
//  MainTag.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<main>` tag specifies the main content of a document.
///
/// The content inside the `<main>` element should be unique to the document. It should not contain any content that is repeated across documents such as sidebars, navigation links, copyright information, site logos, and search forms.
///
/// **Note:** There must not be more than one `<main>` element in a document. The `<main>` element must NOT be a descendant of an `<article>`, `<aside>`, `<footer>`, `<header>`, or `<nav>` element.
open class Main: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}


