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
open class Iframe: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
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
    func allow(_ condition: Bool = true) -> Self {
        flagAttribute("allow", nil, condition)
    }
    
    /// Set to true if the `<iframe>` can activate fullscreen mode by calling the requestFullscreen() method
    func allowfullscreen(_ value: Bool) -> Self {
        attribute("allowfullscreen", String(value))
    }
    
    /// Set to true if a cross-origin `<iframe>` should be allowed to invoke the Payment Request API
    func allowpaymentrequest(_ value: Bool) -> Self {
        attribute("allowpaymentrequest", String(value))
    }
    
    /// Specifies the height of an `<iframe>`. Default height is 150 pixels
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies whether a browser should load an iframe immediately or to defer loading of iframes until some conditions are met
    func loading(_ value: Loading) -> Self {
        attribute("loading", value.rawValue)
    }
    
    /// Specifies the name of an `<iframe>`
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies which referrer information to send when fetching the iframe
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        attribute("referrerpolicy", value.rawValue)
    }
    
    /// Enables an extra set of restrictions for the content in an `<iframe>`
    func sandbox(_ value: Sandbox = .all) -> Self {
        attribute("sandbox", value.rawValue)
    }
    
    /// Specifies the address of the document to embed in the `<iframe>`
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the HTML content of the page to show in the `<iframe>`
    func srcdoc(_ value: String) -> Self {
        attribute("srcdoc", value)
    }
    
    /// Specifies the width of an `<iframe>`. Default width is 300 pixels
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
