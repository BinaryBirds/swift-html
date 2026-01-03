import SGML

/// The `<strong>` tag is used to define text with strong importance.
///
/// **Tip:** Use the `<b>` tag to specify bold text without any extra importance!
public struct Strong:
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
