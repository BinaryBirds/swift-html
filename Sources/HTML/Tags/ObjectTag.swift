import SGML

/// The `<object>` tag defines a container for an external resource.
///
/// The external resource can be a web page, a picture, a media player, or a plug-in application.
public struct Object:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    DataAttributeModifier,
    TypeAttributeModifier,
    NameAttributeModifier,
    FormAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    UseMapAttributeModifier,  // W3C but not in spec + TypeMustMatch?
    // categories
    FlowContent,
    PhrasingContent,
    EmbeddedContent,
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
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        self.init(children: block())
    }
}
