//
//  Embed.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<embed>` tag defines a container for an external resource, such as a web page, a picture, a media player, or a plug-in application.
open class Embed: EmptyTag {

}

extension Embed {

    /// Specifies the height of the embedded content
    public func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }

    /// Specifies the address of the external file to embed
    public func src(_ value: String) -> Self {
        attribute("src", value)
    }

    /// Specifies the media type of the embedded content
    public func type(_ value: String) -> Self {
        attribute("type", value)
    }

    /// Specifies the width of the embedded content
    public func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
