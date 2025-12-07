/// The `<i>` tag defines a part of text in an alternate voice or mood.
///
/// The `<i>` tag is often used to indicate a technical term, a phrase from another language, a thought, a ship name, etc.
///
/// Use the `<i>` element only when there is not a more appropriate semantic element, such as:
///
/// - `<em>` (emphasized text)
/// - `<strong>` (important text)
/// - `<mark>` (marked/highlighted text)
/// - `<cite>` (the title of a work)
/// - `<dfn>` (a definition term)
public struct I:
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
