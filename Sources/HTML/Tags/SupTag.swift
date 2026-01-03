import SGML

/// The `<sup>` tag defines superscript text.
///
/// Superscript text appears half a character above the normal line, and is sometimes rendered in a smaller font.
/// Superscript text can be used for footnotes, like WWW[1].
///
/// **Tip:** Use the `<sub>` tag to define subscript text.
public struct Sup:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        [.flow, .phrasing, .palpable]
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
