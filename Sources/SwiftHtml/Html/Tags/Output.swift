//
//  Output.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<output>` tag is used to represent the result of a calculation (like one performed by a script).
public final class Output: Tag {
    
    public init() {
        super.init(Node(type: .standard, name: "output"))
    }
}

public extension Output {
    /// Specifies the relationship between the result of the calculation, and the elements used in the calculation
    func `for`(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "for", value: value))
        return self
    }
    
    /// Specifies which form the output element belongs to
    func form(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "form", value: value))
        return self
    }
    
    /// Specifies a name for the output element
    func name(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "name", value: value))
        return self
    }
}
