//
//  Map.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<map>` tag is used to define an image map. An image map is an image with clickable areas.
///
/// The required name attribute of the `<map>` element is associated with the `<img>`'s usemap attribute and creates a relationship between the image and the map.
///
/// The `<map>` element contains a number of `<area>` elements, that defines the clickable areas in the image map.
open class Map: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }

    public init(name: String, @TagBuilder _ builder: () -> Tag) {
        super.init([builder()])
        setAttributes([
            .init(key: "name", value: name)
        ])
    }
}

public extension Map {
    
    /// Specifies the name of an <input> element
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
}


