//
//  Del.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<del>` tag defines text that has been deleted from a document.
///
/// Browsers will usually strike a line through deleted text.
open class Del: Tag {

}

extension Del {

    /// Specifies a URL to a document that explains the reason why the text was deleted/changed
    public func cite(_ value: String) -> Self {
        attribute("cite", value)
    }

    /// Specifies the date and time of when the text was deleted/changed
    ///
    /// Format: `YYYY-MM-DDThh:mm:ssTZD`
    public func datetime(_ value: String) -> Self {
        attribute("datetime", value)
    }
}
