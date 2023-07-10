//
//  Article.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func article() -> Node {
        Node(type: .standard, name: "article")
    }
}

/// The `<article>` tag specifies independent, self-contained content.
///
/// An article should make sense on its own and it should be possible to distribute it independently from the rest of the site.
///
/// Potential sources for the `<article>` element:
///
/// - Forum post
/// - Blog post
/// - News story
///
/// **Note:** The `<article>` element does not render as anything special in a browser.
/// However, you can use CSS to style the `<article>` element (see example below).
open class Article: StandardTag {
    
    override open class var name: String { .init(Article.self) }
}

