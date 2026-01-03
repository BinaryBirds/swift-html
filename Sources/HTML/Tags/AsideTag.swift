import SGML

/// The `<aside>` tag defines some content aside from the content it is placed in.
///
/// The aside content should be indirectly related to the surrounding content.
///
/// **Tip:** The `<aside>` content is often placed as a sidebar in a document.
///
/// **Note:** The `<aside>` element does not render as anything special in a browser.
/// However, you can use CSS to style the `<aside>` element (see example below).
public struct Aside:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
    SectioningContent,
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
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        // Flow content.
        self.init(children: block())
    }
}
