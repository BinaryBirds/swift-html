//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func optgroup(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "optgroup", children: children)
    }
}

/// The <optgroup> tag is used to group related options in a <select> element (drop-down list).
/// 
/// If you have a long list of options, groups of related options are easier to handle for a user.
public struct Optgroup: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .optgroup(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    
    /// Specifies that an option-group should be disabled
    public func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Specifies a label for an option-group
    public func label(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "label", value: value)))
    }
}
