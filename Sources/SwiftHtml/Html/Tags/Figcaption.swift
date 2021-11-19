//
//  Figcaption.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<figcaption>` tag defines a caption for a `<figure>` element.
///
/// The `<figcaption>` element can be placed as the first or last child of the `<figure>` element.
public final class Figcaption: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "figcaption", contents: contents))
    }
}
