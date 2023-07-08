//
//  Dt.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<dt>` tag defines a term/name in a description list.
/// 
/// The `<dt>` tag is used in conjunction with `<dl>` (defines a description list) and `<dd>` (describes each term/name).
open class Dt: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
