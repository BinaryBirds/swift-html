import SGML

/// The `<dd>` tag is used to describe a term/name in a description list.
///
/// The `<dd>` tag is used in conjunction with `<dl>` (defines a description list) and `<dt>` (defines terms/names).
///
/// Inside a `<dd>` tag you can put paragraphs, line breaks, images, links, lists, etc.
public struct Dd:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
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
