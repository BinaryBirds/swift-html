import SGML

/// The `<article>` tag specifies independent, self-contained content.
///
/// An article should make sense on its own and it should be possible to distribute it independently from the rest of the site.
///
/// Potential sources for the `<article>` element:
///
/// - Forum post
/// - Blog post
/// - News story
///
/// **Note:** The `<article>` element does not render as anything special in a browser.
/// However, you can use CSS to style the `<article>` element (see example below).
public struct Article:
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
