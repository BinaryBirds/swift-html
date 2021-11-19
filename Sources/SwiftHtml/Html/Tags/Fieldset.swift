//
//  Fieldset.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<fieldset>` tag is used to group related elements in a form.
/// 
/// The `<fieldset>` tag draws a box around the related elements.
public final class Fieldset: Tag {
    
    init(_ node: Node) {
        super.init(node)
    }
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "fieldset"), tags: builder())
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
