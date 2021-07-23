//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func script() -> Node {
        Node(type: .empty, name: "script")
    }
}

/// The <script> tag is used to embed a client-side script (JavaScript).
///
/// The <script> element either contains scripting statements, or it points to an external script file through the src attribute.
///
/// Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.
public struct Script: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .script()
    }
    
    /// Specifies that the script is executed asynchronously (only for external scripts)
    func async() -> Self {
        .init(node.addOrReplace(Attribute(key: "async")))
    }
    
    /// Sets the mode of the request to an HTTP CORS Request
    public func crossorigin(_ value: Crossorigin) -> Self {
        .init(node.addOrReplace(Attribute(key: "crossorigin", value: value.rawValue)))
    }
    
    /// Specifies that the script is executed when the page has finished parsing (only for external scripts)
    func `defer`() -> Self {
        .init(node.addOrReplace(Attribute(key: "defer")))
    }
    
    /// Allows a browser to check the fetched script to ensure that the code is never loaded if the source has been manipulated
    func integrity(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "integrity", value: value)))
    }
    
    /// Specifies that the script should not be executed in browsers supporting ES2015 modules
    func nomodule(_ value: Bool) -> Self {
        .init(node.addOrReplace(Attribute(key: "nomodule", value: String(value).capitalized)))
    }
    
    /// Specifies which referrer information to send when fetching a script
    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        .init(node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue)))
    }
    
    /// The URL of the external script file.
    func src(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "src", value: value)))
    }
    
    /// Specifies the media type of the script
    func type(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value)))
    }
}

