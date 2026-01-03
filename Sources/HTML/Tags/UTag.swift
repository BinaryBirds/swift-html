import SGML

/// The `<u>` tag represents some text that is unarticulated and styled differently from normal text, such as misspelled words or proper names in Chinese text.
///
/// The content inside is typically displayed with an underline.
/// You can change this with CSS (see example below).
///
/// **Tip:** Avoid using the `<u>` element where it could be confused for a hyperlink!
public struct U:
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
