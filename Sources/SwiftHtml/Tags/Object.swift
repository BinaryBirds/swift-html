//
//  Object.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<object>` tag defines a container for an external resource.
///
/// The external resource can be a web page, a picture, a media player, or a plug-in application.
open class Object: Tag {}

public extension Object {
    
    /// Specifies the URL of the resource to be used by the object
    func data(_ value: String) -> Self {
        attribute("data", value)
    }
    
    /// Specifies which form the object belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the height of the object
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
        
    /// Specifies a name for the object
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies the media type of data specified in the data attribute
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
    
    /// Specifies whether the type attribute and the actual content of the resource must match to be displayed
    func typemustmatch(_ value: Bool) -> Self {
        attribute("typemustmatch", String(value))
    }
    
    /// Specifies the name of a client-side image map to be used with the object
    func usemap(_ value: String) -> Self {
        attribute("usemap", "#" + value)
    }
    
    /// Specifies the width of the object
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
