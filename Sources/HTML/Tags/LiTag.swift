/// The `<li>` tag defines a list item.
///
/// The `<li>` tag is used inside ordered lists(`<ol>`), unordered lists (`<ul>`), and in menu lists (`<menu>`).
///
/// In `<ul>` and `<menu>`, the list items will usually be displayed with bullet points.
///
/// In `<ol>`, the list items will usually be displayed with numbers or letters.
///
/// **Tip:** Use CSS to style lists.
public struct Li:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    ValueAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        []
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
