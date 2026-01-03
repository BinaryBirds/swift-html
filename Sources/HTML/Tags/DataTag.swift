import SGML

/// The `<data>` tag is used to add a machine-readable translation of a given content.
///
/// This element provides both a machine-readable value for data processors, and a human-readable value for rendering in a browser.
///
/// **Tip:** If the content is time- or date-related, use the `<time>` element instead.
public struct Data:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ValueAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        [.flow, .phrasing, .palpable]
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
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
