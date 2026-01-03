import SGML

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
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent]
    ) {
        self.init(children: block())
    }
}
