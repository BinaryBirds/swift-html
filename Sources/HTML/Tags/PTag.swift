import SGML

/// The `<p>` tag defines a paragraph.
///
/// Browsers automatically add a single blank line before and after each `<p>` element.
///
/// **Tip:** Use CSS to style paragraphs.
public struct P:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
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
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent]
    ) {
        self.init(children: block())
    }
}
