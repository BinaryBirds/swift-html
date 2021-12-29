//
//  Text.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

/// a plain text node to write simple textual content into the html tree
open class Text: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .group, contents: contents))
    }
}
