//
//  Source.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//


/// The `<source>` tag is used to specify multiple media resources for media elements, such as `<video>`, `<audio>`, and `<picture>`.
///
/// The `<source>` tag allows you to specify alternative video/audio/image files which the browser may choose from, based on browser support or viewport width.
/// The browser will choose the first `<source>` it supports.
open class Source: EmptyTag {
    
    override open class var name: String { .init(Source.self) }
}

public extension Source {
    
    /// Accepts any valid media query that would normally be defined in a CSS
    func media(_ value: String) -> Self {
        attribute("media", value)
    }

    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: MediaQuery...) -> Self {
        return media(queries)
    }
    
    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: [MediaQuery]) -> Self {
        return media(queries.map(\.value).joined(separator: " and "))
    }
    
    /// Specifies image sizes for different page layouts
    func sizes(value: String) -> Self {
        attribute("sizes", value)
    }
    
    /// Required when <source> is used in <audio> and <video>. Specifies the URL of the media file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Required when <source> is used in <picture>. Specifies the URL of the image to use in different situations
    func srcset(_ value: String) -> Self {
        attribute("srcset", value)
    }
    
    /// Specifies the MIME-type of the resource
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
}
