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
public final class Textarea: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "textarea", contents: contents))
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
    func autofocus() -> Self {
        node.upsert(Attribute(key: "autofocus"))
        return self
    }
    
    /// Specifies the visible width of a text area
    func cols(_ value: Int) -> Self {
        node.upsert(Attribute(key: "cols", value: String(value)))
        return self
    }
    
    /// Specifies that the text direction of the textarea will be submitted
    func dirname(_ value: String) -> Self {
        node.upsert(Attribute(key: "dirname", value: value))
        return self
    }
    
    /// Specifies that a text area should be disabled
    func disabled() -> Self {
        node.upsert(Attribute(key: "disabled"))
        return self
    }
    
    /// Specifies which form the text area belongs to
    func form(_ value: String) -> Self {
        node.upsert(Attribute(key: "form", value: value))
        return self
    }
    
    /// Specifies the maximum number of characters allowed in the text area
    func maxlength(_ value: Int) -> Self {
        node.upsert(Attribute(key: "maxlength", value: String(value)))
        return self
    }

    /// Specifies a name for a text area
    func name(_ value: String) -> Self {
        node.upsert(Attribute(key: "name", value: value))
        return self
    }
    
    /// Specifies a short hint that describes the expected value of a text area
    func placeholder(_ value: String) -> Self {
        node.upsert(Attribute(key: "placeholder", value: value))
        return self
    }
    
    /// Specifies that a text area should be read-only
    func readonly() -> Self {
        node.upsert(Attribute(key: "readonly"))
        return self
    }
    
    /// Specifies that a text area is required/must be filled out
    func required() -> Self {
        node.upsert(Attribute(key: "required"))
        return self
    }
    
    /// Specifies the visible width of a text area
    func rows(_ value: Int) -> Self {
        node.upsert(Attribute(key: "rows", value: String(value)))
        return self
    }
    
    /// Specifies how the text in a text area is to be wrapped when submitted in a form
    func wrap(_ value: Wrap) -> Self {
        node.upsert(Attribute(key: "wrap", value: value.rawValue))
        return self
    }
}
