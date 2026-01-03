import SGML

/// The `<fieldset>` tag is used to group related elements in a form.
///
/// The `<fieldset>` tag draws a box around the related elements.
public struct Fieldset:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    NameAttributeModifier,
    // categories
    FlowContent,
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
