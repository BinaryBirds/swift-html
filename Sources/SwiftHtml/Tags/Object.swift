//
//  Object.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func object() -> Node {
        Node(type: .standard, name: "object")
    }
}

/// The `<object>` tag defines a container for an external resource.
///
/// The external resource can be a web page, a picture, a media player, or a plug-in application.
public struct Object: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .object()
    }
}

public extension Object {
    /// Specifies the URL of the resource to be used by the object
    func data(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "data", value: value)))
    }
    
    /// Specifies which form the object belongs to
    func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies the height of the object
    func height(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "height", value: String(value))))
    }
        
    /// Specifies a name for the object
    func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
    
    /// Specifies the media type of data specified in the data attribute
    func type(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value)))
    }
    
    /// Specifies whether the type attribute and the actual content of the resource must match to be displayed
    func typemustmatch(_ value: Bool) -> Self {
        .init(node.addOrReplace(Attribute(key: "typemustmatch", value: String(value))))
    }
    
    /// Specifies the name of a client-side image map to be used with the object
    func usemap(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "usemap", value: "#" + value)))
    }
    
    /// Specifies the width of the object
    func width(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "width", value: String(value))))
    }
}
