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
        flagAttribute("async")
    }
    
    /// Sets the mode of the request to an HTTP CORS Request
    func crossorigin(_ value: Crossorigin) -> Self {
        attribute("crossorigin", value.rawValue)
    }
    
    /// Specifies that the script is executed when the page has finished parsing (only for external scripts)
    func `defer`(_ condition: Bool = true) -> Self {
        flagAttribute("defer", nil, condition)
    }
    
    /// Allows a browser to check the fetched script to ensure that the code is never loaded if the source has been manipulated
    func integrity(_ value: String) -> Self {
        attribute("integrity", value)
    }
    
    // @NOTE: auto capitalize string value?
    /// Specifies that the script should not be executed in browsers supporting ES2015 modules
    func nomodule(_ value: Bool) -> Self {
        attribute("nomodule", String(value))
    }
    
    /// Specifies which referrer information to send when fetching a script
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        attribute("referrerpolicy", value.rawValue)
    }
    
    /// The URL of the external script file.
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the media type of the script
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
}

public extension Script {
    
    /// Specifies the media type of the script
    func type(_ value: `Type`) -> Self {
        type(value.rawValue)
    }
}

