//
//  A.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<a>` tag defines a hyperlink, which is used to link from one page to another.
///
/// The most important attribute of the `<a>` element is the href attribute, which indicates the link's destination.
///
/// By default, links will appear as follows in all browsers:
///
/// - An unvisited link is underlined and blue
/// - A visited link is underlined and purple
/// - An active link is underlined and red
open class A: Tag {}

public extension A {
    
    enum Rel: String {
        /// Provides a link to an alternate representation of the document (i.e. print page, translated or mirror)
        case alternate
        /// Provides a link to the author of the document
        case author
        /// Permanent URL used for bookmarking
        case bookmark
        /// Indicates that the referenced document is not part of the same site as the current document
        case external
        /// Provides a link to a help document
        case help
        /// Provides a link to licensing information for the document
        case license
        /// Provides a link to the next document in the series
        case next
        /// Links to an unendorsed document, like a paid link.
        /// ("nofollow" is used by Google, to specify that the Google search spider should not follow that link)
        case nofollow
        /// Requires that any browsing context created by following the hyperlink must not have an opener browsing context
        case noopener
        /// Makes the referrer unknown. No referer header will be included when the user clicks the hyperlink
        case noreferrer
        /// The previous document in a selection
        case prev
        /// Links to a search tool for the document
        case search
        /// A tag (keyword) for the current document
        case tag
    }
    
    /// Specifies that the target will be downloaded when a user clicks on the hyperlink
    func download(_ value: String? = nil) -> Self {
        flagAttribute("download", value)
    }
    
    /// Specifies the URL of the page the link goes to
    func href(_ value: String) -> Self {
        attribute("href", value)
    }
    
    /// Specifies the language of the linked document
    func hreflang(_ value: String) -> Self {
        attribute("hreflang", value)
    }
    
    /// Specifies what media/device the linked document is optimized for
    func media(_ value: String) -> Self {
        attribute("media", value)
    }
    
    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: MediaQuery...) -> Self {
        return media(queries)
    }
    
    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: [MediaQuery]) -> Self {
        return media(queries.map(\.value).joined(separator: " and "))
    }
    
    /// Specifies a space-separated list of URLs to which, when the link is followed, post requests with the body ping will be sent by the browser (in the background).
    ///
    /// Typically used for tracking.
    func ping(_ value: [String]) -> Self {
        attribute("ping", value.joined(separator: " "))
    }
    
    /// Specifies which referrer information to send with the link
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        attribute("referrerpolicy", value.rawValue)
    }
    
    /// Specifies the relationship between the current document and the linked document
    func rel(_ value: Rel) -> Self {
        attribute("rel", value.rawValue)
    }

    /// Specifies where to open the linked document
    func target(_ value: TargetFrame, _ condition: Bool = true) -> Self {
        attribute("target", value.rawValue, condition)
    }
    
    /// The type attribute specifies the Internet media type (formerly known as MIME type) of the linked document.
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
}
