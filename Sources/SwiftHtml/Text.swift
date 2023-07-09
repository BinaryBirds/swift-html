//
//  Text.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

/// a plain text node to write simple textual content into the html tree
open class Text: GroupTag {
    
    public convenience init(_ contents: String) {
        self.init(node: GroupTag.defaultNode(Text.self))
        setContents(contents)
    }
}
