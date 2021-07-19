//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func a(_ value: String) -> Node {
        Node(type: .standard, name: "a", contents: value)
    }
}

public struct A: Tag {
    
    public enum RefererPolicy: String {
        /// No referrer information is sent
        case noReferrer = "no-referrer"
        /// Default. Sends the origin, path, and query string if the protocol security level stays the same or is higher (HTTP to HTTP, HTTPS to HTTPS, HTTP to HTTPS is ok). Sends nothing to less secure level (HTTPS to HTTP is not ok)
        case noReferrerWhenDowngrade = "no-referrer-when-downgrade"
        /// Sends the origin (scheme, host, and port) of the document
        case origin
        /// Sends the origin of the document for cross-origin request. Sends the origin, path, and query string for same-origin request
        case originWhenCrossOrigin = "origin-when-cross-origin"
        /// Sends a referrer for same-origin request. Sends no referrer for cross-origin request
        case sameOrigin = "same-origin"
        /// Sends the origin if the protocol security level stays the same or is higher (HTTP to HTTP, HTTPS to HTTPS, and HTTP to HTTPS is ok). Sends nothing to less secure level (HTTPS to HTTP)
        case strictOriginWhenCrossOrigin = "strict-origin-when-cross-origin"
        /// Sends the origin, path, and query string (regardless of security). Use this value carefully!
        case unsafeUrl = "unsafe-url"
    }
    
    public enum Rel: String {
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
    
    public enum Target: String {
        /// Opens the linked document in a new window or tab
        case blank = "_blank"
        /// Opens the linked document in the same frame as it was clicked (this is default)
        case `self` = "_self"
        /// Opens the linked document in the parent frame
        case parent = "_parent"
        /// Opens the linked document in the full body of the window
        case top = "_top"
        // @TODO: add support for framename
        /// Opens the linked document in the named iframe
//        case frame(String)
        
    }

    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init(_ value: String) {
        self.init(.a(value))
    }

    /// Specifies that the target will be downloaded when a user clicks on the hyperlink
    public func download(_ name: String? = nil) -> Self {
        .init(node.addOrReplace(Attribute(key: "download", value: name)))
    }
    
    /// Specifies the URL of the page the link goes to
    public func href(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "href", value: url)))
    }
    
    /// Specifies the language of the linked document
    public func hreflang(_ langCode: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "hreflang", value: langCode)))
    }
    
    /// Specifies what media/device the linked document is optimized for
    public func media(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "media", value: value)))
    }
    
    /// Specifies a space-separated list of URLs to which, when the link is followed, post requests with the body ping will be sent by the browser (in the background).
    ///
    /// Typically used for tracking.
    public func ping(_ value: [String]) -> Self {
        .init(node.addOrReplace(Attribute(key: "ping", value: value.joined(separator: " "))))
    }
    
    /// Specifies which referrer information to send with the link
    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        .init(node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue)))
    }
    
    /// Specifies the relationship between the current document and the linked document
    public func rel(_ value: Rel) -> Self {
        .init(node.addOrReplace(Attribute(key: "rel", value: value.rawValue)))
    }
    
    /// Specifies where to open the linked document
    public func target(_ value: Target) -> Self {
        .init(node.addOrReplace(Attribute(key: "target", value: value.rawValue)))
    }
    
    /// The type attribute specifies the Internet media type (formerly known as MIME type) of the linked document.
    public func type(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value)))
    }
}
