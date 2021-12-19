//
//  Button.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<button>` tag defines a clickable button.
///
/// Inside a `<button>` element you can put text (and tags like `<i>`, `<b>`, `<strong>`, `<br>`, `<img>`, etc.). That is not possible with a button created with the `<input>` element!
///
/// **Tip:** Always specify the type attribute for a `<button>` element, to tell browsers what type of button it is.
///
/// **Tip:** You can easily style buttons with CSS! Look at the examples below or visit our CSS Buttons tutorial.
public final class Button: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "button", contents: contents))
    }
}

public extension Button {
    
    enum `Type`: String {
        /// The button is a clickable button
        case button
        /// The button is a submit button (submits form-data)
        case submit
        /// The button is a reset button (resets the form-data to its initial values)
        case reset
    }

    /// Specifies that a button should automatically get focus when the page loads
    func autofocus() -> Self {
        node.upsert(Attribute(key: "autofocus"))
        return self
    }
    
    /// Specifies that a button should be disabled
    func disabled() -> Self {
        node.upsert(Attribute(key: "disabled"))
        return self
    }
    
    /// Specifies which form the button belongs to
    func form(_ value: String) -> Self {
        node.upsert(Attribute(key: "form", value: value))
        return self
    }
    
    /// Specifies where to send the form-data when a form is submitted. Only for type="submit"
    func formaction(_ value: String) -> Self {
        node.upsert(Attribute(key: "formaction", value: value))
        return self
    }
    
    /// Specifies how form-data should be encoded before sending it to a server. Only for type="submit"
    func formenctype(_ value: Enctype = .urlencoded) -> Self {
        node.upsert(Attribute(key: "formenctype", value: value.rawValue))
        return self
    }
    
    /// Specifies how to send the form-data (which HTTP method to use). Only for type="submit"
    func formmethod(_ value: Enctype = .urlencoded) -> Self {
        node.upsert(Attribute(key: "formmethod", value: value.rawValue))
        return self
    }
    
    /// Specifies that the form-data should not be validated on submission. Only for type="submit"
    func formnovalidate() -> Self {
        node.upsert(Attribute(key: "formnovalidate"))
        return self
    }
    
    /// Specifies where to display the response after submitting the form. Only for type="submit"
    func target(_ value: TargetFrame) -> Self {
        node.upsert(Attribute(key: "target", value: value.rawValue))
        return self
    }
    
    /// Specifies a name for the button
    func name(_ value: String) -> Self {
        node.upsert(Attribute(key: "name", value: value))
        return self
    }
    
    /// Specifies the type of button
    func type(_ value: Type) -> Self {
        node.upsert(Attribute(key: "type", value: value.rawValue))
        return self
    }
    
    /// Specifies an initial value for the button
    func value(_ value: String) -> Self {
        node.upsert(Attribute(key: "value", value: value))
        return self
    }
    
}
