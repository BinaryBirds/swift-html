//
//  Iframe.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<iframe>` tag specifies an inline frame.
///
/// An inline frame is used to embed another document within the current HTML document.
///
/// **Tip:** Use CSS to style the `<iframe>` (see example below).
///
/// **Tip:** It is a good practice to always include a title attribute for the `<iframe>`. This is used by screen readers to read out what the content of the `<iframe>` is.
public final class Iframe: Tag {

    public init() {
        super.init(Node(type: .standard, name: "iframe"))
    }
}

public extension Iframe {
    enum Sandbox {
        /// (no value)    Applies all restrictions
        case all
        /// Allows form submission
        case allowForms
        /// Allows to open modal windows
        case allowModals
        /// Allows to lock the screen orientation
        case allowOrientationLock
        /// Allows to use the Pointer Lock API
        case allowPointerLock
        /// Allows popups
        case allowPopups
        /// Allows popups to open new windows without inheriting the sandboxing
        case allowPopupsToEscapeSandbox
        /// Allows to start a presentation session
        case allowPresentation
        /// Allows the iframe content to be treated as being from the same origin
        case allowSameOrigin
        /// Allows to run scripts
        case allowScripts
        /// Allows the iframe content to navigate its top-level browsing context
        case allowTopNavigation
        /// Allows the iframe content to navigate its top-level browsing context, but only if initiated by user
        case allowTopNavigationByUserActivation
        
        var rawValue: String? {
            switch self {
            case .all:
                return nil
            case .allowForms:
                return "allow-forms"
            case .allowModals:
                return "allow-modals"
            case .allowOrientationLock:
                return "allow-orientation-lock"
            case .allowPointerLock:
                return "allow-pointer-lock"
            case .allowPopups:
                return "allow-popups"
            case .allowPopupsToEscapeSandbox:
                return "allow-popups-to-escape-sandbox"
            case .allowPresentation:
                return "allow-presentation"
            case .allowSameOrigin:
                return "allow-same-origin"
            case .allowScripts:
                return "allow-scripts"
            case .allowTopNavigation:
                return "allow-top-navigation"
            case .allowTopNavigationByUserActivation:
                return "allow-top-navigation-by-user-activation"
            }
        }
    }
    
    /// Specifies a feature policy for the `<iframe>`
    func allow() -> Self {
        node.addOrReplace(Attribute(key: "allow"))
        return self
    }
    
    /// Set to true if the `<iframe>` can activate fullscreen mode by calling the requestFullscreen() method
    func allowfullscreen(_ value: Bool) -> Self {
        node.addOrReplace(Attribute(key: "allowfullscreen", value: String(value)))
        return self
    }
    
    /// Set to true if a cross-origin `<iframe>` should be allowed to invoke the Payment Request API
    func allowpaymentrequest(_ value: Bool) -> Self {
        node.addOrReplace(Attribute(key: "allowpaymentrequest", value: String(value)))
        return self
    }
    
    /// Specifies the height of an `<iframe>`. Default height is 150 pixels
    func height(_ value: Double) -> Self {
        node.addOrReplace(Attribute(key: "height", value: String(value)))
        return self
    }
    
    /// Specifies whether a browser should load an iframe immediately or to defer loading of iframes until some conditions are met
    func loading(_ value: Loading) -> Self {
        node.addOrReplace(Attribute(key: "loading", value: value.rawValue))
        return self
    }
    
    /// Specifies the name of an `<iframe>`
    func name(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "name", value: value))
        return self
    }
    
    /// Specifies which referrer information to send when fetching the iframe
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue))
        return self
    }
    
    /// Enables an extra set of restrictions for the content in an `<iframe>`
    func sandbox(_ value: Sandbox = .all) -> Self {
        node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue))
        return self
    }
    
    /// Specifies the address of the document to embed in the `<iframe>`
    func src(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "src", value: value))
        return self
    }
    
    /// Specifies the HTML content of the page to show in the `<iframe>`
    func srcdoc(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "srcdoc", value: value))
        return self
    }
    
    /// Specifies the width of an `<iframe>`. Default width is 300 pixels
    func width(_ value: Double) -> Self {
        node.addOrReplace(Attribute(key: "width", value: String(value)))
        return self
    }
}
