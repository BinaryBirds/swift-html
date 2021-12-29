//
//  Blockquote.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<blockquote>` tag specifies a section that is quoted from another source.
/// 
/// Browsers usually indent `<blockquote>` elements (look at example below to see how to remove the indentation).
open class Blockquote: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "blockquote", contents: contents))
    }
}

public extension Blockquote {
    /// Specifies the source of the quotation
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
}
