//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func img() -> Node {
        Node(type: .empty, name: "img")
    }
}

/// The <img> tag is used to embed an image in an HTML page.
///
/// Images are not technically inserted into a web page; images are linked to web pages. The <img> tag creates a holding space for the referenced image.
///
/// The <img> tag has two required attributes:
///
/// - src - Specifies the path to the image
/// - alt - Specifies an alternate text for the image, if the image for some reason cannot be displayed
/// Note: Also, always specify the width and height of an image. If width and height are not specified, the page might flicker while the image loads.
///
/// Tip: To link an image to another document, simply nest the <img> tag inside an <a> tag (see example below).
public struct Img: Tag {
    

    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init(src: String, alt: String) {
        self.node = .img()
        self.node.attributes.append(contentsOf: [
            .init(key: "src", value: src),
            .init(key: "alt", value: src),
        ])
    }
    
    /// Specifies an alternate text for an image
    public func alt(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "alt", value: value)))
    }
    
    /// Allow images from third-party sites that allow cross-origin access to be used with canvas
    public func crossorigin(_ value: Crossorigin) -> Self {
        .init(node.addOrReplace(Attribute(key: "crossorigin", value: value.rawValue)))
    }
    
    /// Specifies the height of an image
    public func height(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "height", value: String(value))))
    }
    
    /// Specifies an image as a server-side image map
    public func ismap() -> Self {
        .init(node.addOrReplace(Attribute(key: "ismap")))
    }
    
    /// Specifies whether a browser should load an image immediately or to defer loading of images until some conditions are met
    public func loading(_ value: Loading) -> Self {
        .init(node.addOrReplace(Attribute(key: "loading", value: value.rawValue)))
    }
    
    /// Specifies a URL to a detailed description of an image
    public func longdesc(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "longdesc", value: value)))
    }
    
    /// Specifies which referrer information to use when fetching an image
    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        .init(node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue)))
    }
    
    /// Specifies image sizes for different page layouts
    public func sizes(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "sizes", value: value)))
    }
    
    /// Specifies the path to the image
    func src(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "src", value: value)))
    }
    
    /// Specifies a list of image files to use in different situations
    func srcset(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "srcset", value: value)))
    }
    
    /// Specifies an image as a client-side image map
    func usemap(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "usemap", value: "#" + value)))
    }
    
    /// Specifies the width of an image
    public func width(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "width", value: String(value))))
    }
    
}

