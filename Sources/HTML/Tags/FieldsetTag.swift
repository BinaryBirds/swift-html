import SGML

/// The `<fieldset>` tag is used to group related elements in a form.
///
/// The `<fieldset>` tag draws a box around the related elements.
public struct Fieldset:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
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
            // Listed and autocapitalize-and-autocorrect inheriting form-associated element.
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
