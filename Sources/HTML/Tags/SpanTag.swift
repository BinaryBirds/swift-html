import SGML

/// The `<span>` tag is an inline container used to mark up a part of a text, or a part of a document.
///
/// The `<span>` tag is easily styled by CSS or manipulated with JavaScript using the class or id attribute.
///
/// The `<span>` tag is much like the `<div>` element, but `<div>` is a block-level element and `<span>` is an inline element.
public struct Span:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
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
