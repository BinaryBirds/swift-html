//
//  Optgroup.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<optgroup>` tag is used to group related options in a `<select>` element (drop-down list).
/// 
/// If you have a long list of options, groups of related options are easier to handle for a user.
public final class Optgroup: Tag {
    
    init(_ node: Node) {
        super.init(node)
    }
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "optgroup"), tags: builder())
    }

}

public extension Optgroup {
    /// Specifies that an option-group should be disabled
    func disabled() -> Self {
        .init(node.addOrReplace(Attribute(key: "disabled")))
    }
    
    /// Specifies a label for an option-group
    func label(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "label", value: value)))
    }
}
