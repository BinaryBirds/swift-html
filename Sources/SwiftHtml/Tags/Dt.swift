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
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}
