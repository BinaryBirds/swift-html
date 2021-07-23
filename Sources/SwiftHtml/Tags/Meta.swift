//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func meta() -> Node {
        Node(type: .empty, name: "meta")
    }
}

public struct Meta: Tag {
    
    public enum Name: String {
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
    
    public enum HttpEquiv: String {
        /// Specifies a content policy for the document.
        case contentSecurityPolicy = "content-security-policy"
        /// Specifies the character encoding for the document.
        case contentType = "content-type"
        /// Specified the preferred style sheet to use.
        case defaultStyle = "default-style"
        /// Defines a time interval for the document to refresh itself.
        case refresh
    }

    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .meta()
    }
    
    /// Specifies the character encoding for the HTML document
    public func charset(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "charset", value: value)))
    }
    
    /// Specifies the value associated with the http-equiv or name attribute
    public func content(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "content", value: value)))
    }
    
    /// Provides an HTTP header for the information/value of the content attribute
    public func httpEquiv(_ value: HttpEquiv) -> Self {
        .init(node.addOrReplace(Attribute(key: "http-equiv", value: value.rawValue)))
    }
    
    /// Specifies a name for the metadata
    public func name(_ value: Name) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value.rawValue)))
    }
}
