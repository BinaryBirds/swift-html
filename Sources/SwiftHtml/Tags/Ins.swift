//
//  Ins.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<ins>` tag defines a text that has been inserted into a document. Browsers will usually underline inserted text.
///
/// **Tip:** Also look at the `<del>` tag to markup deleted text.
open class Ins: StandardTag {
    
    override open class var `class`: AnyClass { Ins.self }
}
