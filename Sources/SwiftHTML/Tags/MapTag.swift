/// The `<map>` tag is used to define an image map.
///
/// The required name attribute of the `<map>` element is associated with the `<img>`'s usemap attribute and creates a relationship between the image and the map.
///
/// The `<map>` element contains a number of `<area>` elements, that defines the clickable areas in the image map.
public struct Map:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    NameAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            .palpable,
        ]
    }

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
