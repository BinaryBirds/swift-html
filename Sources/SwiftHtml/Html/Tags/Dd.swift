//
//  Dd.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<dd>` tag is used to describe a term/name in a description list.
/// 
/// The `<dd>` tag is used in conjunction with `<dl>` (defines a description list) and `<dt>` (defines terms/names).
/// 
/// Inside a `<dd>` tag you can put paragraphs, line breaks, images, links, lists, etc.
public final class Dd: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "dd", contents: contents))
    }
}
