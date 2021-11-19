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
public final class Select: Tag {
    

    init(_ node: Node) {
        super.init(node)
    }
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "select"), tags: builder())
    }
}

public extension Select {
    /// Specifies that the drop-down list should automatically get focus when the page loads
    func autofocus() -> Self {
        .init(node.addOrReplace(Attribute(key: "autofocus")))
    }
    
    /// Specifies that a drop-down list should be disabled
    func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Defines which form the drop-down list belongs to
    func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies that multiple options can be selected at once
    func multiple() -> Self {
        .init(node.addOrReplace(Attribute(key: "multiple")))
    }
    
    /// Defines a name for the drop-down list
    func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
    
    /// Specifies that the user is required to select a value before submitting the form
    func required() -> Self {
        .init(node.addOrReplace(Attribute(key: "required")))
    }
    
    /// Defines the number of visible options in a drop-down list
    func size(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "size", value: String(value))))
    }
}
