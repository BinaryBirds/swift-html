//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func option(_ contents: String) -> Node {
        Node(type: .standard, name: "option", contents: contents)
    }
}

/// The <option> tag defines an option in a select list.
/// 
/// <option> elements go inside a <select>, <optgroup>, or <datalist> element.
/// 
/// Note: The <option> tag can be used without any attributes, but you usually need the value attribute, which indicates what is sent to the server on form submission.
/// 
/// Tip: If you have a long list of options, you can group related options within the <optgroup> tag.
public struct Option: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .option(contents)
    }
    
    /// Specifies that an option should be disabled
    public func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Specifies a shorter label for an option
    public func label(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "label", value: value)))
    }
    
    /// Specifies that an option should be pre-selected when the page loads
    public func selected() -> Self {
        .init(node.addOrReplace(Attribute(key: "selected")))
    }
    
    /// Specifies the value to be sent to a server
    public func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
