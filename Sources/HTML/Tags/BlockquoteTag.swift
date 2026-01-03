import SGML

/// The `<blockquote>` tag specifies a section that is quoted from another source.
///
/// Browsers usually indent `<blockquote>` elements (look at example below to see how to remove the indentation).
public struct Blockquote:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    CiteAttributeModifier,
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
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        self.init(children: block())
    }
}
