import SGML

/// The <hgroup> tag is used to surround a heading and one or more <p> elements.
///
/// The heading inside the <hgroup> element can be any of the <h1> to <h6> headings.
///
/// Note: The <hgroup> element does not render as anything special in a browser. However, you can use CSS to style the <hgroup> element and its content.
public struct Hgroup:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
    HeadingContent,
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
