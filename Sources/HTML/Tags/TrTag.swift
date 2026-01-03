import SGML

/// The `<tr>` tag defines a row in an HTML table.
///
/// A `<tr>` element contains one or more `<th>` or `<td>` elements.
public struct Tr:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
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
