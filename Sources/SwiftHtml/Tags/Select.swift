//
//  Select.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<select>` element is used to create a drop-down list.
///
/// The `<select>` element is most often used in a form, to collect user input.
///
/// The name attribute is needed to reference the form data after the form is submitted (if you omit the name attribute, no data from the drop-down list will be submitted).
///
/// The id attribute is needed to associate the drop-down list with a label.
///
/// The `<option>` tags inside the `<select>` element define the available options in the drop-down list.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
open class Select: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}

public extension Select {
    
    /// Specifies that the drop-down list should automatically get focus when the page loads
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies that a drop-down list should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Defines which form the drop-down list belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies that multiple options can be selected at once
    func multiple(_ condition: Bool = true) -> Self {
        flagAttribute("multiple", nil, condition)
    }
    
    /// Defines a name for the drop-down list
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies that the user is required to select a value before submitting the form
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Defines the number of visible options in a drop-down list
    func size(_ value: Int) -> Self {
        attribute("size", String(value))
    }
}
