import SGML

/// The `<map>` tag is used to define an image map.
///
/// The required name attribute of the `<map>` element is associated with the `<img>`'s usemap attribute and creates a relationship between the image and the map.
///
/// The `<map>` element contains a number of `<area>` elements, that defines the clickable areas in the image map.
public struct Map:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    NameAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
    PalpableContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        self.init(children: block())
    }
}
