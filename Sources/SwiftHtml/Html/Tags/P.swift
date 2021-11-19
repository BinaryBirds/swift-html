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
public final class P: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "p", contents: contents))
    }   
}
