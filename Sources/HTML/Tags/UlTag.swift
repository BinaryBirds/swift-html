import SGML

/// The `<ul>` tag defines an unordered (bulleted) list.
///
/// Use the `<ul>` tag together with the `<li>` tag to create unordered lists.
///
/// **Tip:** Use CSS to style lists.
///
/// **Tip:** For ordered lists, use the `<ol>` tag.
public struct Ul:
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
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
