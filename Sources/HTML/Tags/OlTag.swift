import SGML

/// The `<ol>` tag defines an ordered list.
///
/// The `<li>` tag is used to define each list item.
///
/// **Tip:** Use CSS to style lists.
///
/// **Tip:** For unordered list, use the `<ul>` tag.
public struct Ol:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ReversedAttributeModifier,
    StartAttributeModifier,
    TypeAttributeModifier,
    // categories
    FlowContent,
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

    // MARK: -

    public enum Types: String, AttributeValueRepresentable {
        /// Default. Decimal numbers (1, 2, 3, 4)
        case decimal = "1"
        /// Alphabetically ordered list, lowercase (a, b, c, d)
        case lowerAlpha = "a"
        /// Alphabetically ordered list, uppercase (A, B, C, D)
        case upperAlpha = "A"
        /// Roman numbers, lowercase (i, ii, iii, iv)
        case lowerRoman = "i"
        /// Roman numbers, uppercase (I, II, III, IV)
        case upperRoman = "I"
    }

    public typealias TypeAttributeValueType = Types

    // MARK: -

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
