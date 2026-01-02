import SGML

/// The `<object>` tag defines a container for an external resource.
///
/// The external resource can be a web page, a picture, a media player, or a plug-in application.
public struct Object:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    DataAttributeModifier,
    TypeAttributeModifier,
    NameAttributeModifier,
    FormAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    UsemapAttributeModifier,  // W3C but not in spec
    TypemustmatchAttributeModifier  // W3C but not in spec
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
            .embedded,
            //            Listed form-associated element.
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

    public init() {
        self.init(
            children: []
        )
    }

    public init(
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
