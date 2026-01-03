import SGML

/// The `<dfn>` tag stands for the "definition element", and it specifies a term that is going to be defined within the content.
///
/// The nearest parent of the `<dfn>` tag must also contain the definition/explanation for the term.
///
/// The term inside the `<dfn>` tag can be any of the following:
/// `<p><dfn>HTML</dfn> is the standard markup language for creating web pages.</p>`
public struct Dfn:
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
