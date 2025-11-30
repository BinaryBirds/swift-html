/// The `<source>` tag is used to specify multiple media resources for media elements, such as `<video>`, `<audio>`, and `<picture>`.
///
/// The `<source>` tag allows you to specify alternative video/audio/image files which the browser may choose from, based on browser support or viewport width.
/// The browser will choose the first `<source>` it supports.
public struct Source:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    TypeAttributeModifier,
    MediaAttributeModifier,
    SrcAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier
//✅type — Type of embedded resource
//✅media — Applicable media
//✅src (in audio or video) — Address of the resource
//srcset (in picture) — Images to use in different situations, e.g., high-resolution displays, small monitors, etc.
//sizes (in picture) — Image sizes for different page layouts
//✅width (in picture) — Horizontal dimension
//✅height (in picture) — Vertical dimension
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        []
    }

    public init() {
        self.attributes = .init()
    }
}

//
//    /// Specifies image sizes for different page layouts
//    public func sizes(value: String) -> Self {
//        attribute("sizes", value)
//    }
//
//    /// Required when <source> is used in <picture>. Specifies the URL of the image to use in different situations
//    public func srcset(_ value: String) -> Self {
//        attribute("srcset", value)
//    }
