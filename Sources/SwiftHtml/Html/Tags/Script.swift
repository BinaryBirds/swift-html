//
//  Script.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<script>` tag is used to embed a client-side script (JavaScript).
///
/// The `<script>` element either contains scripting statements, or it points to an external script file through the src attribute.
///
/// Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.
public final class Script: Tag {
    
    public enum `Type`: String {
        case javascript = "text/javascript"
    }

    public init(_ contents: String? = nil) {
        super.init(Node(type: .standard, name: "script", contents: contents))
    }
}

public extension Script {

    /// Specifies that the script is executed asynchronously (only for external scripts)
    func async() -> Self {
        node.addOrReplace(Attribute(key: "async"))
        return self
    }
    
    /// Sets the mode of the request to an HTTP CORS Request
    func crossorigin(_ value: Crossorigin) -> Self {
        node.addOrReplace(Attribute(key: "crossorigin", value: value.rawValue))
        return self
    }
    
    /// Specifies that the script is executed when the page has finished parsing (only for external scripts)
    func `defer`() -> Self {
        node.addOrReplace(Attribute(key: "defer"))
        return self
    }
    
    /// Allows a browser to check the fetched script to ensure that the code is never loaded if the source has been manipulated
    func integrity(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "integrity", value: value))
        return self
    }
    
    // @NOTE: auto capitalize string value?
    /// Specifies that the script should not be executed in browsers supporting ES2015 modules
    func nomodule(_ value: Bool) -> Self {
        node.addOrReplace(Attribute(key: "nomodule", value: String(value)))
        return self
    }
    
    /// Specifies which referrer information to send when fetching a script
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue))
        return self
    }
    
    /// The URL of the external script file.
    func src(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "src", value: value))
        return self
    }
    
    /// Specifies the media type of the script
    func type(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "type", value: value))
        return self
    }
}

public extension Script {
    /// Specifies the media type of the script
    func type(_ value: `Type`) -> Self {
        type(value.rawValue)
    }
}

