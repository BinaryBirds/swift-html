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
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "footer"), children: builder())
    }
}
