//
//  Textarea.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<textarea>` tag defines a multi-line text input control.
///
/// The `<textarea>` element is often used in a form, to collect user inputs like comments or reviews.
///
/// A text area can hold an unlimited number of characters, and the text renders in a fixed-width font (usually Courier).
///
/// The size of a text area is specified by the `<cols>` and `<rows>` attributes (or with CSS).
///
/// The name attribute is needed to reference the form data after the form is submitted (if you omit the name attribute, no data from the text area will be submitted).
///
/// The id attribute is needed to associate the text area with a label.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
open class Textarea: StandardTag {
    
    override open class var name: String { .init(describing: Textarea.self).lowercased() }
}

public extension Textarea {
    
    enum Wrap: String {
        /// The text in the textarea is not wrapped when submitted in a form. This is default
        case soft
        /// The text in the textarea is wrapped (contains newlines) when submitted in a form. When "hard" is used, the cols attribute must be specified
        case hard
    }

    /// Specifies that a text area should automatically get focus when the page loads
    @discardableResult
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies the visible width of a text area
    @discardableResult
    func cols(_ value: Int?, _ condition: Bool = true) -> Self {
        attribute("cols", value != nil ? String(value!) : nil, condition)
    }
    
    /// Specifies that the text direction of the textarea will be submitted
    @discardableResult
    func dirname(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("dirname", value, condition)
    }
    
    /// Specifies that a text area should be disabled
    @discardableResult
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies which form the text area belongs to
    @discardableResult
    func form(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("form", value, condition)
    }
    
    /// Specifies the maximum number of characters allowed in the text area
    @discardableResult
    func maxlength(_ value: Int?, _ condition: Bool = true) -> Self {
        attribute("maxlength", value != nil ? String(value!) : nil, condition)
    }

    /// Specifies a name for a text area
    @discardableResult
    func name(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("name", value, condition)
    }
    
    /// Specifies a short hint that describes the expected value of a text area
    @discardableResult
    func placeholder(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("placeholder", value, condition)
    }
    
    /// Specifies that a text area should be read-only
    @discardableResult
    func readonly(_ condition: Bool = true) -> Self {
        flagAttribute("readonly", nil, condition)
    }
    
    /// Specifies that a text area is required/must be filled out
    @discardableResult
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Specifies the visible width of a text area
    @discardableResult
    func rows(_ value: Int?, _ condition: Bool = true) -> Self {
        attribute("rows", value != nil ? String(value!) : nil, condition)
    }
    
    /// Specifies how the text in a text area is to be wrapped when submitted in a form
    @discardableResult
    func wrap(_ value: Wrap?, _ condition: Bool = true) -> Self {
        attribute("wrap", value?.rawValue, condition)
    }
}
