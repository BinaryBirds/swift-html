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
    
    open class var name: String? { String(describing: self) }
    
    open class var type: Node.NodeType { .standard }

    open class func createNode(_ type: Node.NodeType, _ name: String?) -> Node {
        Node(type: type, name: name)
    }

    /// initialize a new Tag with child tags
    public init(name: String? = nil, type: Node.NodeType? = nil, _ children: [Tag] = []) {
        let name = name ?? Self.name
        self.node = Self.createNode(type ?? Self.type, name?.lowercased())
        self.children = children
    }

    /// initialize a new Tag with a single child tag
    public convenience init(name: String? = nil, type: Node.NodeType? = nil, _ child: Tag) {
        self.init(name: name, type: type, [child])
    }

    /// initialize a new Tag with children using a builder
    public convenience init(name: String? = nil, type: Node.NodeType? = nil, @TagBuilder _ builder: () -> [Tag]) {
        self.init(name: name, type: type, builder())
    }
   
//    /// initialize a new Tag with children using an async throwing builder
//    public convenience init(@TagBuilder _ builder: () async throws -> [Tag]) async throws {
//        self.init(try await builder())
//    }

    /// initialize a new Tag with some contents
    public convenience init(name: String? = nil, type: Node.NodeType? = nil, _ contents: String?) {
        self.init(name: name, type: type)
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
}
