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
open class Select: StandardTag {
    
    override open class var name: String { .init(describing: Select.self).lowercased() }
}

public extension Select {
    
    /// Specifies autocomplete attributes
    /// https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete
    @discardableResult
    func autocomplete(_ value: Attribute.Autocomplete?, _ condition: Bool = true) -> Self {
        attribute("autocomplete", value?.rawValue, condition)
    }
    
    /// Specifies that the drop-down list should automatically get focus when the page loads
    @discardableResult
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies that a drop-down list should be disabled
    @discardableResult
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Defines which form the drop-down list belongs to
    @discardableResult
    func form(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("form", value, condition)
    }
    
    /// Specifies that multiple options can be selected at once
    @discardableResult
    func multiple(_ condition: Bool = true) -> Self {
        flagAttribute("multiple", nil, condition)
    }
    
    /// Defines a name for the drop-down list
    @discardableResult
    func name(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("name", value, condition)
    }
    
    /// Specifies that the user is required to select a value before submitting the form
    @discardableResult
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Defines the number of visible options in a drop-down list
    @discardableResult
    func size(_ value: Int?, _ condition: Bool = true) -> Self {
        attribute("size", value != nil ? String(value!) : nil, condition)
    }
}
