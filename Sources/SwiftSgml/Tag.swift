//
//  Tag.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

open class Tag {

    public var node: Node
    public var children: [Tag]
    
    // MARK: - init

    public init(_ node: Node, children: [Tag] = []) {
        self.node = node
        self.children = children
    }
    
    // MARK: - attributes
   
    @discardableResult
    public func attribute(_ key: String, _ value: String?, _ condition: Bool = true) -> Self {
        if let value = value, condition {
            node.upsert(Attribute(key: key, value: value))
        }
        return self
    }

    @discardableResult
    public func flagAttribute(_ key: String, _ value: String? = nil, _ condition: Bool = true) -> Self {
        if condition {
            node.upsert(Attribute(key: key, value: value))
        }
        return self
    }
}
