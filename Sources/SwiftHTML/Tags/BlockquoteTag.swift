/// The `<blockquote>` tag specifies a section that is quoted from another source.
///
/// Browsers usually indent `<blockquote>` elements (look at example below to see how to remove the indentation).
public struct Blockquote:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    CiteAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
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
