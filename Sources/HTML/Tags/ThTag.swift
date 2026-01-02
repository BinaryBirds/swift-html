import SGML

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
    GlobalAttributeModifier,
    ColspanAttributeModifier,
    RowspanAttributeModifier
//✅colspan — Number of columns that the cell is to span
//✅rowspan — Number of rows that the cell is to span
//headers — The header cells for this cell
//scope — Specifies which cells the header cell applies to
//abbr — Alternative label to use for the header cell when referencing the cell in other contexts
{

    public struct Scope: Attribute {

        public enum Value: String {
            /// Specifies that the cell is a header for a column.
            case col
            /// Specifies that the cell is a header for a row.
            case row
            /// Specifies that the cell is a header for a group of columns.
            case colgroup
            /// Specifies that the cell is a header for a group of rows.
            case rowgroup
        }

        public var value: String?

        init(
            _ value: Value? = nil
        ) {
            self.value = value?.rawValue
        }
    }

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

    public func scope(
        _ value: Scope.Value?
    ) -> Self {
        setAttribute(Scope(value))
    }

}

//    /// Specifies an abbreviated version of the content in a header cell
//    public func abbr(_ value: String) -> Self {
//        attribute("abbr", value)
//    }
//
//    /// Specifies one or more header cells a cell is related to
//    public func headers(_ value: String) -> Self {
//        attribute("headers", value)
//    }
//
