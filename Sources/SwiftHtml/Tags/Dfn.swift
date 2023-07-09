//
//  Dfn.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<dfn>` tag stands for the "definition element", and it specifies a term that is going to be defined within the content.
///
/// The nearest parent of the `<dfn>` tag must also contain the definition/explanation for the term.
///
/// The term inside the `<dfn>` tag can be any of the following:
/// `<p><dfn>HTML</dfn> is the standard markup language for creating web pages.</p>`
open class Dfn: StandardTag {
    
    override open class var `class`: AnyClass { Dfn.self }
}
