//
//  Meta.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<meta>` tag defines metadata about an HTML document. Metadata is data (information) about data.
///
/// `<meta>` tags always go inside the `<head>` element, and are typically used to specify character set, page description, keywords, author of the document, and viewport settings.
///
/// Metadata will not be displayed on the page, but is machine parsable.
///
/// Metadata is used by browsers (how to display content or reload page), search engines (keywords), and other web services.
///
/// There is a method to let web designers take control over the viewport (the user's visible area of a web page), through the `<meta>` tag (See "Setting The Viewport" example below).
public final class Meta: Tag {

    public init() {
        super.init(Node(type: .empty, name: "meta"))
    }
}

public extension Meta {
    enum Name: String {
        /// Specifies the name of the Web application that the page represents
        case applicationName = "application-name"
        /// Specifies the name of the author of the document.
        case author
        /// Specifies a description of the page. Search engines can pick up this description to show with the results of searches.
        case description
        /// Specifies one of the software packages used to generate the document (not used on hand-authored pages).
        case generator
        /// Specifies a comma-separated list of keywords - relevant to the page (Informs search engines what the page is about).
        case keywords
        /// Controls the viewport (the user's visible area of a web page).
        case viewport
    }
    
    enum HttpEquiv: String {
        /// Specifies a content policy for the document.
        case contentSecurityPolicy = "content-security-policy"
        /// Specifies the character encoding for the document.
        case contentType = "content-type"
        /// Specified the preferred style sheet to use.
        case defaultStyle = "default-style"
        /// Defines a time interval for the document to refresh itself.
        case refresh
    }

    /// Specifies the character encoding for the HTML document
    func charset(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "charset", value: value))
        return self
    }
    
    /// Specifies the value associated with the http-equiv or name attribute
    func content(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "content", value: value))
        return self
    }
    
    /// Provides an HTTP header for the information/value of the content attribute
    func httpEquiv(_ value: HttpEquiv) -> Self {
        node.addOrReplace(Attribute(key: "http-equiv", value: value.rawValue))
        return self
    }
    
    /// Specifies a name for the metadata
    func name(_ value: Name) -> Self {
        node.addOrReplace(Attribute(key: "name", value: value.rawValue))
        return self
    }
}
