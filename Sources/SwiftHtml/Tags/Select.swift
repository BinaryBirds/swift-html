//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func select(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "select", children: children)
    }
}

/// The <select> element is used to create a drop-down list.
///
/// The <select> element is most often used in a form, to collect user input.
///
/// The name attribute is needed to reference the form data after the form is submitted (if you omit the name attribute, no data from the drop-down list will be submitted).
///
/// The id attribute is needed to associate the drop-down list with a label.
///
/// The <option> tags inside the <select> element define the available options in the drop-down list.
///
/// Tip: Always add the <label> tag for best accessibility practices!
public struct Select: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .select(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    

    /// Specifies that the drop-down list should automatically get focus when the page loads
    public func autofocus() -> Self {
        .init(node.addOrReplace(Attribute(key: "autofocus")))
    }
    
    /// Specifies that a drop-down list should be disabled
    public func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Defines which form the drop-down list belongs to
    public func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies that multiple options can be selected at once
    public func multiple() -> Self {
        .init(node.addOrReplace(Attribute(key: "multiple")))
    }
    
    /// Defines a name for the drop-down list
    public func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
    
    /// Specifies that the user is required to select a value before submitting the form
    public func required() -> Self {
        .init(node.addOrReplace(Attribute(key: "required")))
    }
    
    /// Defines the number of visible options in a drop-down list
    public func size(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "size", value: String(value))))
    }
}
