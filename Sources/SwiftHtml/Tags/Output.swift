//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func output() -> Node {
        Node(type: .standard, name: "output")
    }
}

/// The <output> tag is used to represent the result of a calculation (like one performed by a script).
public struct Output: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .output()
    }
    
    /// Specifies the relationship between the result of the calculation, and the elements used in the calculation
    public func `for`(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "for", value: value)))
    }
    
    /// Specifies which form the output element belongs to
    public func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies a name for the output element
    public func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
}
