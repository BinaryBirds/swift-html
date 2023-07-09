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
open class Textarea: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}

public extension Textarea {
    
    enum Wrap: String {
        /// The text in the textarea is not wrapped when submitted in a form. This is default
        case soft
        /// The text in the textarea is wrapped (contains newlines) when submitted in a form. When "hard" is used, the cols attribute must be specified
        case hard
    }

    /// Specifies that a text area should automatically get focus when the page loads
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies the visible width of a text area
    func cols(_ value: Int) -> Self {
        attribute("cols", String(value))
    }
    
    /// Specifies that the text direction of the textarea will be submitted
    func dirname(_ value: String) -> Self {
        attribute("dirname", value)
    }
    
    /// Specifies that a text area should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies which form the text area belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the maximum number of characters allowed in the text area
    func maxlength(_ value: Int) -> Self {
        attribute("maxlength", String(value))
    }

    /// Specifies a name for a text area
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies a short hint that describes the expected value of a text area
    func placeholder(_ value: String?) -> Self {
        attribute("placeholder", value)
    }
    
    /// Specifies that a text area should be read-only
    func readonly(_ condition: Bool = true) -> Self {
        flagAttribute("readonly", nil, condition)
    }
    
    /// Specifies that a text area is required/must be filled out
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Specifies the visible width of a text area
    func rows(_ value: Int) -> Self {
        attribute("rows", String(value))
    }
    
    /// Specifies how the text in a text area is to be wrapped when submitted in a form
    func wrap(_ value: Wrap) -> Self {
        attribute("wrap", value.rawValue)
    }
}
