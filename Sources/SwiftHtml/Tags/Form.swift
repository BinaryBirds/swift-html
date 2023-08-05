//
//  Form.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<form>` tag is used to create an HTML form for user input.
///
/// The `<form>` element can contain one or more of the following form elements:
///
/// - `<input>`
/// - `<textarea>`
/// - `<button>`
/// - `<select>`
/// - `<option>`
/// - `<optgroup>`
/// - `<fieldset>`
/// - `<label>`
/// - `<output>`
open class Form: StandardTag {
    
    override open class var name: String { .init(describing: Form.self).lowercased() }
}

public extension Form {
    
    enum Rel: String {
        /// Specifies that the referenced document is not a part of the current site
        case external
        /// Links to a help document
        case help
        /// Links to copyright information for the document
        case license
        /// The next document in a selection
        case next
        /// Links to an unendorsed document, like a paid link.
        /// ("nofollow" is used by Google, to specify that the Google search spider should not follow that link)
        case nofollow
        
        case noopener
        /// Specifies that the browser should not send a HTTP referrer header if the user follows the hyperlink
        case noreferrer
        case opener
        /// The previous document in a selection
        case prev
        /// Links to a search tool for the document
        case search
    }
    
    /// Specifies the character encodings that are to be used for the form submission
    @discardableResult
    func acceptCharset(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("accept-charset", value, condition)
    }
    
    /// Specifies where to send the form-data when a form is submitted
    @discardableResult
    func action(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("action", value, condition)
    }
    
    /// Specifies whether a form should have autocomplete on or off
    @discardableResult
    func autocomplete(_ value: Bool? = true, _ condition: Bool = true) -> Self {
        var onOffValue: String?
        if let value = value { onOffValue = value ? "on" : "off" }
        return attribute("autocomplete", onOffValue, condition)
    }
    
    /// Specifies how the form-data should be encoded when submitting it to the server (only for method="post")
    @discardableResult
    func enctype(_ value: Enctype?, _ condition: Bool = true) -> Self {
        attribute("enctype", value?.rawValue, condition)
    }
    
    /// Specifies the HTTP method to use when sending form-data
    @discardableResult
    func method(_ value: Method?, _ condition: Bool = true) -> Self {
        attribute("method", value?.rawValue, condition)
    }
    
    /// Specifies the name of a form
    @discardableResult
    func name(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("name", value, condition)
    }
    
    /// Specifies that the form should not be validated when submitted
    @discardableResult
    func novalidate(_ condition: Bool = true) -> Self {
        flagAttribute("novalidate", nil, condition)
    }
    
    /// Specifies the relationship between a linked resource and the current document
    @discardableResult
    func rel(_ value: Rel?, _ condition: Bool = true) -> Self {
        attribute("rel", value?.rawValue, condition)
    }
    
    /// Specifies where to display the response that is received after submitting the form
    @discardableResult
    func target(_ value: Target?, condition: Bool = true) -> Self {
        attribute("target", value?.rawValue, condition)
    }
}
