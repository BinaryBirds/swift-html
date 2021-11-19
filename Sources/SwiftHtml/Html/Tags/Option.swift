//
//  Option.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<option>` tag defines an option in a select list.
/// 
/// `<option>` elements go inside a `<select>`, `<optgroup>`, or `<datalist>` element.
/// 
/// **Note:** The `<option>` tag can be used without any attributes, but you usually need the value attribute, which indicates what is sent to the server on form submission.
/// 
/// **Tip:** If you have a long list of options, you can group related options within the `<optgroup>` tag.
public final class Option: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "option", contents: contents))
    }
}

public extension Option {
    /// Specifies that an option should be disabled
    func disabled() -> Self {
        node.upsert(Attribute(key: "disabled"))
        return self
    }
    
    /// Specifies a shorter label for an option
    func label(_ value: String) -> Self {
        node.upsert(Attribute(key: "label", value: value))
        return self
    }
    
    /// Specifies that an option should be pre-selected when the page loads
    func selected() -> Self {
        node.upsert(Attribute(key: "selected"))
        return self
    }
    
    /// Specifies the value to be sent to a server
    func value(_ value: String) -> Self {
        node.upsert(Attribute(key: "value", value: value))
        return self
    }
}
