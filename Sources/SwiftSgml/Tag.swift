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

    /// initialize a new Tag with child tags
    public init(_ children: [Tag] = []) {
        self.node = Self.createNode()
        self.children = children
    }
    
    /// initialize a new Tag with children using a builder
    public convenience init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder())
    }

    /// initialize a new Tag with some contents
    public convenience init(_ contents: String?) {
        self.init()
        if let contents = contents {
            setContents(contents)
        }
    }

    // MARK: - contents
    
    /// set contents
    @discardableResult
    public func setContents(_ value: String?, _ condition: Bool = true) -> Self {
        if condition {
            node.contents = value
        }
        return self
    }

    // MARK: - attributes
    
    /// set attributes
    @discardableResult
    public func setAttributes(_ attributes: [Attribute], _ condition: Bool = true) -> Self {
        if condition {
            node.attributes = attributes
        }
        return self
    }
    
    /// delete an attribute by a given key
    @discardableResult
    public func deleteAttribute(_ key: String, _ condition: Bool = true) -> Self {
        if condition {
            node.delete(Attribute(key: key))
        }
        return self
    }
    
    /// add a new attribute with a given value if the condition is true
    @discardableResult
    public func attribute(_ key: String, _ value: String?, _ condition: Bool = true) -> Self {
        if let value = value, condition {
            node.upsert(Attribute(key: key, value: value))
        }
        return self
    }

    /// add a new flag-like attribute with a given value if the condition is true
    ///
    /// if the flag value is `nil` only the attribute key will be used. eg. `<foo bar></foo>`
    ///
    @discardableResult
    public func flagAttribute(_ key: String, _ value: String? = nil, _ condition: Bool = true) -> Self {
        if condition {
            node.upsert(Attribute(key: key, value: value))
        }
        return self
    }
    
    // MARK - Children
    
    /// i must be a valid index of array
    /// i == nil ... append
    @discardableResult
    public func insert(at i: Int? = nil, if condition: Bool = true, @TagBuilder children: () -> [Tag]) -> Self {
        self.children.insert(contentsOf: children(), at: i ?? self.children.endIndex)
        return self
    }
    
    /// i must be a valid index of array
    @discardableResult
    public func remove(at i: Int, if condition: Bool = true) -> Self {
        children.remove(at: i)
        return self
    }
}
