//
//  Tag.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

//  See README.md for detailed options on how to use the class.

open class Tag {
        
    public private(set) var node: Node
    public private(set) var children: [Tag]
    
    open class var node: Node { .init(type: .standard, name: Self.name) }
    
    open class var name: String { .init(self).lowercased() }
    
    // MARK: - init
        
    /// initialize a new Tag with child tags
    public init(node: Node? = nil, _ children: [Tag] = []) {
        self.node = node ?? Self.node
        self.children = children
    }

    /// initialize a new Tag with a single child tag
    public convenience init(node: Node? = nil, _ child: Tag) {
        self.init(node: node, [child])
    }

    /// initialize a new Tag with children using a builder
    public convenience init(node: Node? = nil, @TagBuilder _ builder: () -> Tag) {
        self.init(node: node, [builder()])
    }
    
    /// initialize a new Tag with some contents
    public convenience init(node: Node? = nil, _ contents: String?) {
        self.init(node: node)
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

public extension String {
    
    /// convert class names into node names
    init(_ `class`: AnyClass) {
        self.init(stringLiteral: .init(describing: `class`.self).lowercased())
    }
}
