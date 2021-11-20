//
//  Ins.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<ins>` tag defines a text that has been inserted into a document. Browsers will usually underline inserted text.
///
/// **Tip:** Also look at the `<del>` tag to markup deleted text.
public final class Ins: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "ins", contents: contents))
    }
}
