//
//  Dt.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<dt>` tag defines a term/name in a description list.
/// 
/// The `<dt>` tag is used in conjunction with `<dl>` (defines a description list) and `<dd>` (describes each term/name).
public final class Dt: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "dt", contents: contents))
    }
}
