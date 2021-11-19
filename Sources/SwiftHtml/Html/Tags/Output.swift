//
//  Output.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<output>` tag is used to represent the result of a calculation (like one performed by a script).
public final class Output: Tag {

    init(_ node: Node) {
        super.init(node)
    }
    
    public init() {
        super.init(Node(type: .standard, name: "output"))
    }
}

public extension Output {
    /// Specifies the relationship between the result of the calculation, and the elements used in the calculation
    func `for`(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "for", value: value)))
    }
    
    /// Specifies which form the output element belongs to
    func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies a name for the output element
    func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
}
