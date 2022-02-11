//
//  Tag.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

open class Tag {

    public private(set) var node: Node
    public private(set) var children: [Tag]
    
    // MARK: - init

    open class func createNode() -> Node {
        Node(type: .standard, name: String(describing: self).lowercased())
    }

    public init(_ children: [Tag] = []) {
        self.node = Self.createNode()
        self.children = children
    }
    
    public convenience init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder())
    }

    public convenience init(_ contents: String) {
        self.init()
        self.node.contents = contents
    }

    // MARK: - contents
    
    @discardableResult
    public func setContents(_ value: String?) -> Self {
        node.contents = value
        return self
    }

    // MARK: - attributes
    
    public func setAttributes(_ attributes: [Attribute]) {
        node.attributes = attributes
    }
    
    public func deleteAttribute(_ key: String) {
        node.delete(Attribute(key: "checked"))
    }
    
    
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
