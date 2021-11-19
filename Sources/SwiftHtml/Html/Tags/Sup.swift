//
//  Sup.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<sup>` tag defines superscript text.
///
/// Superscript text appears half a character above the normal line, and is sometimes rendered in a smaller font.
/// Superscript text can be used for footnotes, like WWW[1].
///
/// **Tip:** Use the `<sub>` tag to define subscript text.
public final class Sup: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "sup", contents: contents))
    }
}
