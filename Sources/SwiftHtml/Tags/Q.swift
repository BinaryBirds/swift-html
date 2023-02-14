//
//  Q.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<q>` tag defines a short quotation.
///
/// Browsers normally insert quotation marks around the quotation.
///
/// **Tip:** Use `<blockquote>` for long quotations.
open class Q: Tag {
    open class override var name: String? { "q" }
}

public extension Q {
    
    /// Specifies the source URL of the quote
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
}
