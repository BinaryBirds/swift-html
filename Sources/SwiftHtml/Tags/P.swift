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
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}
