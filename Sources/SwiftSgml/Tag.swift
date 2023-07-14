//
//  Tag.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

//  See README.md for detailed options on how to use the class.

open class Tag {
    
    public enum Kind {
        case comment    // <!-- -->
        case empty      // <name>
        case standard   // <name></name>
    }
    
    public let kind: Kind?    // type == nil only children rendered
    public let name: String
    public var contents: String?
    public internal(set) var attributes: [Attribute]?
    public private(set) var children: [Tag]?
    
    open class var kind: Kind? { nil }
    open class var name: String { .init(self).lowercased() }
    
    // MARK: - init
    public init(kind: Kind? = nil,
                name: String? = nil,
                contents: String? = nil,
                attributes: [Attribute]? = nil,
                _ children: [Tag]? = nil) {
        self.kind = kind ?? Self.kind
        self.name = name ?? Self.name
        self.contents = contents
        self.attributes = attributes
        self.children = children
    }
    
    public convenience init(kind: Kind? = nil,
                            name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute]? = nil,
                            _ child: Tag) {
        self.init(kind: kind,
                  name: name,
                  contents: contents,
                  attributes: attributes,
                  [child])
    }
    
    public convenience init(kind: Kind? = nil,
                            name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute]? = nil,
                            @TagBuilder _ builder: () -> Tag) {
        self.init(kind: kind,
                  name: name,
                  contents: contents,
                  attributes: attributes,
                  [builder()])
    }
    
    public convenience init(_ contents: String) {
        self.init(contents: contents)
    }
    
    // MARK: - contents
    
    /// set contents
    @discardableResult
    public func setContents(_ value: String?, _ condition: Bool = true) -> Self {
        contents = condition ? value : contents
        return self
    }
    
    // MARK: - attributes
    
    /// add or replace an attribute with a given key to the node
    private func upsert(_ attribute: Attribute) {
        delete(attribute)
        self.attributes = self.attributes ?? []
        self.attributes?.append(attribute)
    }
    
    /// deletes a attribute with a given key from the node
    private func delete(_ attribute: Attribute) {
        guard let attributes = attributes else { return }
        self.attributes = attributes.filter { $0.key != attribute.key }
    }
    
    /// set attributes
    @discardableResult
    public func setAttributes(_ new: [Attribute], _ condition: Bool = true) -> Self {
        self.attributes = condition ? new : attributes
        return self
    }
    
    /// delete an attribute by a given key
    @discardableResult
    public func deleteAttribute(_ key: String, _ condition: Bool = true) -> Self {
        if condition {
            delete(Attribute(key: key))
        }
        return self
    }
    
    /// add a new attribute with a given value if the condition is true
    @discardableResult
    public func attribute(_ key: String, _ value: String?, _ condition: Bool = true) -> Self {
        if let value = value, condition {
            upsert(Attribute(key: key, value: value))
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
            upsert(Attribute(key: key, value: value))
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
