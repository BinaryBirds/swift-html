//
//  Strong.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<strong>` tag is used to define text with strong importance. The content inside is typically displayed in bold.
///
/// **Tip:** Use the `<b>` tag to specify bold text without any extra importance!
open class Strong: StandardTag {
    
    override open class var `class`: AnyClass { Strong.self }
}
