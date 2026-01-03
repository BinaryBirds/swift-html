import SGML

/// The `<figcaption>` tag defines a caption for a `<figure>` element.
///
/// The `<figcaption>` element can be placed as the first or last child of the `<figure>` element.
public struct Figcaption:
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
