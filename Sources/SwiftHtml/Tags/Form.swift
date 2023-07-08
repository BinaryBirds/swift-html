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
open class Form: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
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
    func acceptCharset(_ value: String) -> Self {
        attribute("accept-charset", value)
    }
    
    /// Specifies where to send the form-data when a form is submitted
    func action(_ value: String?) -> Self {
        attribute("action", value)
    }
    
    /// Specifies whether a form should have autocomplete on or off
    func autocomplete(_ value: Bool = true) -> Self {
        attribute("autocomplete", value ? "on" : "off")
    }
    
    /// Specifies how the form-data should be encoded when submitting it to the server (only for method="post")
    func enctype(_ value: Enctype?, _ condition: Bool = true) -> Self {
        attribute("enctype", value?.rawValue, condition)
    }
    
    /// Specifies the HTTP method to use when sending form-data
    func method(_ value: Method?) -> Self {
        attribute("method", value?.rawValue)
    }
    
    /// Specifies the name of a form
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies that the form should not be validated when submitted
    func novalidate(_ condition: Bool = true) -> Self {
        flagAttribute("novalidate", nil, condition)
    }
    
    /// Specifies the relationship between a linked resource and the current document
    func rel(_ value: Rel) -> Self {
        attribute("rel", value.rawValue)
    }
    
    /// Specifies where to display the response that is received after submitting the form
    func target(_ value: Target) -> Self {
        attribute("target", value.rawValue)
    }
}
