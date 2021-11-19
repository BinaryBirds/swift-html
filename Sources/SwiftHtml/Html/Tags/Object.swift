//
//  Object.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<object>` tag defines a container for an external resource.
///
/// The external resource can be a web page, a picture, a media player, or a plug-in application.
public final class Object: Tag {
    
    public init() {
        super.init(Node(type: .standard, name: "object"))
    }
}

public extension Object {
    /// Specifies the URL of the resource to be used by the object
    func data(_ value: String) -> Self {
        node.upsert(Attribute(key: "data", value: value))
        return self
    }
    
    /// Specifies which form the object belongs to
    func form(_ value: String) -> Self {
        node.upsert(Attribute(key: "form", value: value))
        return self
    }
    
    /// Specifies the height of the object
    func height(_ value: Double) -> Self {
        node.upsert(Attribute(key: "height", value: String(value)))
        return self
    }
        
    /// Specifies a name for the object
    func name(_ value: String) -> Self {
        node.upsert(Attribute(key: "name", value: value))
        return self
    }
    
    /// Specifies the media type of data specified in the data attribute
    func type(_ value: String) -> Self {
        node.upsert(Attribute(key: "type", value: value))
        return self
    }
    
    /// Specifies whether the type attribute and the actual content of the resource must match to be displayed
    func typemustmatch(_ value: Bool) -> Self {
        node.upsert(Attribute(key: "typemustmatch", value: String(value)))
        return self
    }
    
    /// Specifies the name of a client-side image map to be used with the object
    func usemap(_ value: String) -> Self {
        node.upsert(Attribute(key: "usemap", value: "#" + value))
        return self
    }
    
    /// Specifies the width of the object
    func width(_ value: Double) -> Self {
        node.upsert(Attribute(key: "width", value: String(value)))
        return self
    }
}
