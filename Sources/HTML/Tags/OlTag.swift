import SGML

/// The `<ol>` tag defines an ordered list.
///
/// The `<li>` tag is used to define each list item.
///
/// **Tip:** Use CSS to style lists.
///
/// **Tip:** For unordered list, use the `<ul>` tag.
public struct Ol:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier
//reversed — Number the list backwards
//start — Starting value of the list
//type — Kind of list marker
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow
            // If the element's children include at least one li element: Palpable content.
        ]
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

//extension Ol {
//
//    public enum `Type`: String {
//        /// Default. Decimal numbers (1, 2, 3, 4)
//        case `default` = "1"
//        /// Alphabetically ordered list, lowercase (a, b, c, d)
//        case lowerAlpa = "a"
//        /// Alphabetically ordered list, uppercase (A, B, C, D)
//        case upperAlpha = "A"
//        /// Roman numbers, lowercase (i, ii, iii, iv)
//        case lowerRoman = "i"
//        /// Roman numbers, uppercase (I, II, III, IV)
//        case upperRoman = "I"
//    }
//
//    /// Specifies that the list order should be reversed (9,8,7...)
//    public func reversed(_ value: Double) -> Self {
//        attribute("reversed", String(value))
//    }
//
//    /// Specifies the start value of an ordered list
//    public func start(_ value: Int) -> Self {
//        attribute("start", String(value))
//    }
//
//    /// Specifies the kind of marker to use in the list
//    public func type(_ value: `Type`) -> Self {
//        attribute("type", value.rawValue)
//    }
//}
