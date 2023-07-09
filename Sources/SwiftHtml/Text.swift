//
//  Text.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

/// a plain text node to write simple textual content into the html tree
open class Text: GroupTag {
    
    public init(_ contents: String) {
        super.init(name: Self.name) {}
        setContents(contents)
    }
}
