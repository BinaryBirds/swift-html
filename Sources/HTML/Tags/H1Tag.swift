import SGML

/// The `<h1>` to `<h6>` tags are used to define HTML headings.
///
/// `<h1>` defines the most important heading. `<h6>` defines the least important heading.
///
/// **Note:** Only use one `<h1>` per page - this should represent the main heading/subject for the whole page.
/// Also, do not skip heading levels - start with `<h1>`, then use `<h2>`, and so on.
public struct H1:
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
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent]
    ) {
        self.init(children: block())
    }
}
