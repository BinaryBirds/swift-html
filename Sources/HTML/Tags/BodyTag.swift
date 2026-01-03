import SGML

/// The `<body>` tag defines the document's body.
///
/// The `<body>` element contains all the contents of an HTML document, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.
///
/// **Note:** There can only be one `<body>` element in an HTML document.
public struct Body:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    EventAttributesModifier
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
        self.init(children: block())
    }
}
