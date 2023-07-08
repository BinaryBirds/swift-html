//
//  Footer.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<footer>` tag defines a footer for a document or section.
///
/// A `<footer>` element typically contains:
///
/// - authorship information
/// - copyright information
/// - contact information
/// - sitemap
/// - back to top links
/// - related documents
/// You can have several `<footer>` elements in one document.
open class Footer: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
