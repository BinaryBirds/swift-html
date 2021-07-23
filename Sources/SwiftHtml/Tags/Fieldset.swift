//
//  Fieldset.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func fieldset(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "fieldset", children: children)
    }
}

/// The `<fieldset>` tag is used to group related elements in a form.
/// 
/// The `<fieldset>` tag draws a box around the related elements.
public struct Fieldset: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .fieldset(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

public extension Fieldset {
    /// Specifies that a group of related form elements should be disabled
    func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Specifies which form the fieldset belongs to
    func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies a name for the fieldset
    func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
}
