import SGML

/// The `<u>` tag represents some text that is unarticulated and styled differently from normal text, such as misspelled words or proper names in Chinese text.
///
/// The content inside is typically displayed with an underline.
/// You can change this with CSS (see example below).
///
/// **Tip:** Avoid using the `<u>` element where it could be confused for a hyperlink!
public struct U:
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
