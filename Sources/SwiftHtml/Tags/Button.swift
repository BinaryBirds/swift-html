//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func button(_ contents: String) -> Node {
        Node(type: .standard, name: "button", contents: contents)
    }
}

/// The <button> tag defines a clickable button.
///
/// Inside a <button> element you can put text (and tags like <i>, <b>, <strong>, <br>, <img>, etc.). That is not possible with a button created with the <input> element!
///
/// Tip: Always specify the type attribute for a <button> element, to tell browsers what type of button it is.
///
/// Tip: You can easily style buttons with CSS! Look at the examples below or visit our CSS Buttons tutorial.
public struct Button: Tag {
    
    public enum `Type`: String {
        /// The button is a clickable button
        case button
        /// The button is a submit button (submits form-data)
        case submit
        /// The button is a reset button (resets the form-data to its initial values)
        case reset
    }
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .button(contents)
    }
    
    /// Specifies that a button should automatically get focus when the page loads
    public func autofocus() -> Self {
        .init(node.addOrReplace(Attribute(key: "autofocus")))
    }
    
    /// Specifies that a button should be disabled
    public func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Specifies which form the button belongs to
    public func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies where to send the form-data when a form is submitted. Only for type="submit"
    public func formaction(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "formaction", value: value)))
    }
    
    /// Specifies how form-data should be encoded before sending it to a server. Only for type="submit"
    public func formenctype(_ value: Enctype = .urlencoded) -> Self {
        .init(node.addOrReplace(Attribute(key: "formenctype", value: value.rawValue)))
    }
    
    /// Specifies how to send the form-data (which HTTP method to use). Only for type="submit"
    public func formmethod(_ value: Enctype = .urlencoded) -> Self {
        .init(node.addOrReplace(Attribute(key: "formmethod", value: value.rawValue)))
    }
    
    /// Specifies that the form-data should not be validated on submission. Only for type="submit"
    public func formnovalidate() -> Self {
        .init(node.addOrReplace(Attribute(key: "formnovalidate")))
    }
    
    /// Specifies where to display the response after submitting the form. Only for type="submit"
    public func target(_ value: Target) -> Self {
        .init(node.addOrReplace(Attribute(key: "target", value: value.rawValue)))
    }
    
    /// Specifies a name for the button
    public func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
    
    /// Specifies the type of button
    public func type(_ value: Type) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value.rawValue)))
    }
    
    /// Specifies an initial value for the button
    public func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
