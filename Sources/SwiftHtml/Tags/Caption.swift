//
//  Caption.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<caption>` tag defines a table caption.
/// 
/// The `<caption>` tag must be inserted immediately after the `<table>` tag.
/// 
/// **Tip:** By default, a table caption will be center-aligned above a table. However, the CSS properties text-align and caption-side can be used to align and place the caption.
open class Caption: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}
