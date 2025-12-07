/// The` <header>` element represents a container for introductory content or a set of navigational links.
///
/// A` <header>` element typically contains:
///
/// - one or more heading elements (`<h1>` - `<h6>`)
/// - logo or icon
/// - authorship information
/// **Note:** You can have several` <header>` elements in one HTML document. However,` <header>` cannot be placed within a` <footer>`,` <address>` or another` <header>` element.
public struct Header:
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
