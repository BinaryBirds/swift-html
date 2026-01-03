import SGML

/// The `<pre>` tag defines preformatted text.
///
/// Text in a `<pre>` element is displayed in a fixed-width font, and the text preserves both spaces and line breaks.
/// The text will be displayed exactly as written in the HTML source code.
public struct Pre:
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
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent]
    ) {
        self.init(children: block())
    }
}
