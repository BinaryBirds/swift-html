//
//  Embed.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<embed>` tag defines a container for an external resource, such as a web page, a picture, a media player, or a plug-in application.
public final class Embed: Tag {
    
    public init() {
        super.init(Node(type: .empty, name: "embed"))
    }
}

public extension Embed {
    /// Specifies the height of the embedded content
    func height(_ value: Double) -> Self {
        node.upsert(Attribute(key: "height", value: String(value)))
        return self
    }
    
    /// Specifies the address of the external file to embed
    func src(_ value: String) -> Self {
        node.upsert(Attribute(key: "src", value: value))
        return self
    }
    
    /// Specifies the media type of the embedded content
    func type(_ value: String) -> Self {
        node.upsert(Attribute(key: "type", value: value))
        return self
    }
    
    /// Specifies the width of the embedded content
    func width(_ value: Double) -> Self {
        node.upsert(Attribute(key: "width", value: String(value)))
        return self
    }
}
