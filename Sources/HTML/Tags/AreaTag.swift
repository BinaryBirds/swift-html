import SGML

///
/// The <area> tag defines an area inside an image map (an image map is an image with clickable areas).
///
/// <area> elements are always nested inside a <map> tag.
///
/// **Note:** The usemap attribute in <img> is associated with the <map> element's name attribute, and creates a relationship between the image and the map.
///
/// [HTML Standard - The area element](https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element)
/// [W3C Reference - HTML area tag](https://www.w3schools.com/tags/tag_area.asp)
///
public struct Area:
    ShortTag,
    // attribute modifiers
    GlobalAttributesModifier,
    AltAttributeModifier,
    DownloadAttributeModifier,
    HrefAttributeModifier,
    PingAttributeModifier,
    ShapeAttributeModifier,
    CoordsAttributeModifier,
    ReferrerPolicyAttributeModifier,
    RelAttributeModifier,
    TargetAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }

}
