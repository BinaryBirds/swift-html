//
//  U.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<u>` tag represents some text that is unarticulated and styled differently from normal text, such as misspelled words or proper names in Chinese text.
///
/// The content inside is typically displayed with an underline.
/// You can change this with CSS (see example below).
///
/// **Tip:** Avoid using the `<u>` element where it could be confused for a hyperlink!
open class U: StandardTag {
    
    override open class var name: String { .init(describing: U.self).lowercased() }
}
