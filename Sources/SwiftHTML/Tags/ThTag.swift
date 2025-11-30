/// The `<th>` tag defines a header cell in an HTML table.
///
/// An HTML table has two kinds of cells:
///
/// - Header cells - contains header information (created with the `<th>` element)
/// - Data cells - contains data (created with the `<td>` element)
///
/// The text in `<th>` elements are bold and centered by default.
///
/// The text in `<td>` elements are regular and left-aligned by default.
public struct Th:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier
//colspan — Number of columns that the cell is to span
//rowspan — Number of rows that the cell is to span
//headers — The header cells for this cell
//scope — Specifies which cells the header cell applies to
//abbr — Alternative label to use for the header cell when referencing the cell in other contexts
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

//
//extension Th {
//
//    public enum Scope: String {
//        /// Specifies that the cell is a header for a column
//        case col
//        /// Specifies that the cell is a header for a row
//        case row
//        /// Specifies that the cell is a header for a group of columns
//        case colgroup
//        /// Specifies that the cell is a header for a group of rows
//        case rowgroup
//    }
//
//    /// Specifies an abbreviated version of the content in a header cell
//    public func abbr(_ value: String) -> Self {
//        attribute("abbr", value)
//    }
//
//    /// Specifies the number of columns a header cell should span
//    public func colspan(_ value: Int) -> Self {
//        attribute("colspan", String(value))
//    }
//
//    /// Specifies one or more header cells a cell is related to
//    public func headers(_ value: String) -> Self {
//        attribute("headers", value)
//    }
//
//    /// Specifies the number of rows a header cell should span
//    public func rowspan(_ value: Int) -> Self {
//        attribute("rowspan", String(value))
//    }
//
//    /// Specifies one or more header cells a cell is related to
//    public func scope(_ value: Scope) -> Self {
//        attribute("scope", value.rawValue)
//    }
//}
