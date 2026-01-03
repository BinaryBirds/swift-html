import SGML

/// The `<colgroup>` tag specifies a group of one or more columns in a table for formatting.
///
/// The `<colgroup>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
///
/// **Note:** The `<colgroup>` tag must be a child of a `<table>` element, after any `<caption>` elements and before any `<thead>`, `<tbody>`, `<tfoot>`, and `<tr>` elements.
///
/// **Tip:** To define different properties to a column within a `<colgroup>`, use the `<col>` tag within the `<colgroup>` tag.
public struct Colgroup:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    SpanAttributeModifier
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
