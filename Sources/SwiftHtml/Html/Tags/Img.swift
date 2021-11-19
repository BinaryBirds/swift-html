//
//  Img.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<img>` tag is used to embed an image in an HTML page.
///
/// Images are not technically inserted into a web page; images are linked to web pages.
/// The `<img>` tag creates a holding space for the referenced image.
///
/// The `<img>` tag has two required attributes:
///
/// - src - Specifies the path to the image
/// - alt - Specifies an alternate text for the image, if the image for some reason cannot be displayed
/// **Note:** Also, always specify the width and height of an image.
/// If width and height are not specified, the page might flicker while the image loads.
///
/// **Tip:** To link an image to another document, simply nest the `<img>` tag inside an `<a>` tag (see example below).
public final class Img: Tag {

    public init(src: String, alt: String) {
        let node = Node(type: .empty, name: "img", attributes: [
            Attribute(key: "src", value: src),
            Attribute(key: "alt", value: src),
        ])
        super.init(node)
    }
}

public extension Img {
    /// Specifies an alternate text for an image
    func alt(_ value: String) -> Self {
        node.upsert(Attribute(key: "alt", value: value))
        return self
    }
    
    /// Allow images from third-party sites that allow cross-origin access to be used with canvas
    func crossorigin(_ value: Crossorigin) -> Self {
        node.upsert(Attribute(key: "crossorigin", value: value.rawValue))
        return self
    }
    
    /// Specifies the height of an image
    func height(_ value: Double) -> Self {
        node.upsert(Attribute(key: "height", value: String(value)))
        return self
    }
    
    /// Specifies an image as a server-side image map
    func ismap() -> Self {
        node.upsert(Attribute(key: "ismap"))
        return self
    }
    
    /// Specifies whether a browser should load an image immediately or to defer loading of images until some conditions are met
    func loading(_ value: Loading) -> Self {
        node.upsert(Attribute(key: "loading", value: value.rawValue))
        return self
    }
    
    /// Specifies a URL to a detailed description of an image
    func longdesc(_ value: String) -> Self {
        node.upsert(Attribute(key: "longdesc", value: value))
        return self
    }
    
    /// Specifies which referrer information to use when fetching an image
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        node.upsert(Attribute(key: "referrerpolicy", value: value.rawValue))
        return self
    }
    
    /// Specifies image sizes for different page layouts
    func sizes(_ value: String) -> Self {
        node.upsert(Attribute(key: "sizes", value: value))
        return self
    }
    
    /// Specifies the path to the image
    func src(_ value: String) -> Self {
        node.upsert(Attribute(key: "src", value: value))
        return self
    }
    
    /// Specifies a list of image files to use in different situations
    func srcset(_ value: String) -> Self {
        node.upsert(Attribute(key: "srcset", value: value))
        return self
    }
    
    /// Specifies an image as a client-side image map
    func usemap(_ value: String) -> Self {
        node.upsert(Attribute(key: "usemap", value: "#" + value))
        return self
    }
    
    /// Specifies the width of an image
    func width(_ value: Double) -> Self {
        node.upsert(Attribute(key: "width", value: String(value)))
        return self
    }
}

