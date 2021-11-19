//
//  Ul.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<ul>` tag defines an unordered (bulleted) list.
/// 
/// Use the `<ul>` tag together with the `<li>` tag to create unordered lists.
/// 
/// **Tip:** Use CSS to style lists.
/// 
/// **Tip:** For ordered lists, use the `<ol>` tag.
public final class Ul: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "ul"), tags: builder())
    }
}
