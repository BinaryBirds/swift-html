//
//  Data.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<data>` tag is used to add a machine-readable translation of a given content.
///
/// This element provides both a machine-readable value for data processors, and a human-readable value for rendering in a browser.
///
/// **Tip:** If the content is time- or date-related, use the `<time>` element instead.
open class Data: Tag {
        
}

public extension Data {
    
    /// Specifies the machine-readable translation of the content of the element
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
