//
//  Pre.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<pre>` tag defines preformatted text.
///
/// Text in a `<pre>` element is displayed in a fixed-width font, and the text preserves both spaces and line breaks.
/// The text will be displayed exactly as written in the HTML source code.
open class Pre: StandardTag {
    
    override open class var `class`: AnyClass { Pre.self }
}
