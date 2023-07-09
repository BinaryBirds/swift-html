//
//  Dl.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<dl>` tag defines a description list.
///
/// The `<dl>` tag is used in conjunction with `<dt>` (defines terms/names) and `<dd>` (describes each term/name).
open class Dl: StandardTag {
    
    override open class var `class`: AnyClass { Dl.self }
}
