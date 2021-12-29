//
//  Area.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The <area> tag defines an area inside an image map (an image map is an image with clickable areas).
/// 
/// <area> elements are always nested inside a <map> tag.
/// 
/// **Note:** The usemap attribute in <img> is associated with the <map> element's name attribute, and creates a relationship between the image and the map.
open class Area: Tag {
    
    public enum Rel: String {
        /// Links to an alternate version of the document (i.e. print page, translated or mirror)
        case alternate
        /// Links to the author of the document
        case author
        /// Permanent URL used for bookmarking
        case bookmark
        /// Links to a help document
        case help
        /// Links to copyright information for the document
        case license
        /// The next document in a selection
        case next
        /// Links to an unendorsed document, like a paid link.
        /// ("nofollow" is used by Google, to specify that the Google search spider should not follow that link)
        case nofollow
        /// Specifies that the browser should not send a HTTP referer header if the user follows the hyperlink
        case noreferrer
        /// Specifies that the target document should be cached
        case prefetch
        /// The previous document in a selection
        case prev
        /// Links to a search tool for the document
        case search
        /// A tag (keyword) for the current document
        case tag
    }
    
    public enum Shape: String {
        /// Specifies the entire region
        case `default`
        /// Defines a rectangular region
        case rect
        /// Defines a circular region
        case circle
        /// Defines a polygonal region
        case poly
    }

    public init() {
        super.init(Node(type: .empty, name: "area"))
    }
    
    /// Specifies an alternate text for the area. Required if the href attribute is present
    public func alt(_ value: String) -> Self {
        attribute("alt", value)
    }
    
    /// Specifies the coordinates of the area
    public func coords(_ values: Double...) -> Self {
        attribute("coords", values.map {String($0) }.joined(separator: ","))
    }
    
    /// Specifies that the target will be downloaded when a user clicks on the hyperlink
    public func download(_ value: String) -> Self {
        attribute("download", value)
    }
    
    /// Specifies the hyperlink target for the area
    public func href(_ value: String) -> Self {
        attribute("href", value)
    }
    
    /// Specifies the language of the target URL
    public func hreflang(_ value: String) -> Self {
        attribute("hreflang", value)
    }
    
    /// Specifies what media/device the target URL is optimized for
    public func media(_ value: String) -> Self {
        attribute("media", value)
    }
    
    /// Specifies which referrer information to send with the link
    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        attribute("referrerpolicy", value.rawValue)
    }
    
    /// Specifies the relationship between the current document and the target URL
    public func rel(_ value: Rel) -> Self {
        attribute("rel", value.rawValue)
    }
    
    /// Specifies the shape of the area
    public func shape(_ value: Shape) -> Self {
        attribute("shape", value.rawValue)
    }
    
    /// Specifies where to open the target URL
    public func target(_ value: TargetFrame) -> Self {
        attribute("target", value.rawValue)
    }
    
    /// Specifies the media type of the target URL
    public func type(_ value: String) -> Self {
        attribute("type", value)
    }
}

