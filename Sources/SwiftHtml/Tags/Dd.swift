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
open class Dd: Tag {

    open class override var name: String? { "dd" }
}
