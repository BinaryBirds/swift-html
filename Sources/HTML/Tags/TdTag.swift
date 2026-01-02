import SGML

/// The `<td>` tag defines a standard data cell in an HTML table.
///
/// An HTML table has two kinds of cells:
///
/// - Header cells - contains header information (created with the `<th>` element)
/// - Data cells - contains data (created with the `<td>` element)
///
/// The text in `<td>` elements are regular and left-aligned by default.
///
/// The text in `<th>` elements are bold and centered by default.
public struct Td:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ColspanAttributeModifier,
    RowSpanAttributeModifier
//✅colspan — Number of columns that the cell is to span
//✅rowspan — Number of rows that the cell is to span
//headers — The header cells for this cell
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
