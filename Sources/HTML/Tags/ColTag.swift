import SGML

/// The `<col>` tag specifies column properties for each column within a `<colgroup>` element.
///
/// The `<col>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
public struct Col:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    SpanAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }
}
