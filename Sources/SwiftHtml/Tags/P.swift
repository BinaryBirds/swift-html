//
//  P.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<p>` tag defines a paragraph.
/// 
/// Browsers automatically add a single blank line before and after each `<p>` element.
/// 
/// **Tip:** Use CSS to style paragraphs.
open class P: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
