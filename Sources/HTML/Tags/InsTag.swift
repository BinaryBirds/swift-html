import SGML

/// The `<ins>` tag defines a text that has been inserted into a document.
///
/// **Tip:** Also look at the `<del>` tag to markup deleted text.
public struct Ins:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    CiteAttributeModifier,
    DateTimeAttributeModifier,
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
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        self.init(children: block())
    }
}
