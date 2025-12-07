/// The `<wbr>` (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break.
///
/// **Tip:** When a word is too long, the browser might break it at the wrong place. You can use the `<wbr>` element to add word break opportunities.
public struct Wbr:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier
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
