//
//  Output.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func output() -> Node {
        Node(type: .standard, name: "output")
    }
}

/// The `<output>` tag is used to represent the result of a calculation (like one performed by a script).
public struct Output: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .output()
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
