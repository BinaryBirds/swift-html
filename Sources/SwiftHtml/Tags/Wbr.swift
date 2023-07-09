//
//  Wbr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<wbr>` (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break.
///
/// **Tip:** When a word is too long, the browser might break it at the wrong place. You can use the `<wbr>` element to add word break opportunities.
open class Wbr: StandardTag {
    
    override open class var `class`: AnyClass { Wbr.self }
}
