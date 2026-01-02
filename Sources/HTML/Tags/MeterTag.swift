import SGML

/// The `<meter>` tag defines a scalar measurement within a known range, or a fractional value.
///
/// Examples: Disk usage, the relevance of a query result, etc.
///
/// **Note:** The `<meter>` tag should not be used to indicate progress (as in a progress bar). For progress bars, use the `<progress>` tag.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Meter:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    ValueAttributeModifier
//✅value — Current value of the element
//min — Lower bound of range
//max — Upper bound of range
//low — High limit of low range
//high — Low limit of high range
//optimum — Optimum value in gauge
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            // Labelable element.
            .palpable,
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

//open class Meter: Tag {
//
//    public init(value: Int, _ contents: String) {
//        super.init()
//        setContents(contents)
//        setAttributes([
//            .init(key: "value", value: String(value))
//        ])
//    }
//}
//
//extension Meter {
//
//    /// Specifies which form the <meter> element belongs to
//    public func form(_ value: String) -> Self {
//        attribute("form", value)
//    }
//
//    /// Specifies the range that is considered to be a high value
//    public func high(_ value: Int) -> Self {
//        attribute("high", String(value))
//
//    }
//
//    /// Specifies the range that is considered to be a low value
//    public func low(_ value: Int) -> Self {
//        attribute("low", String(value))
//
//    }
//
//    /// Specifies the maximum value of the range
//    public func max(_ value: Int) -> Self {
//        attribute("max", String(value))
//
//    }
//
//    /// Specifies the minimum value of the range. Default value is 0
//    public func min(_ value: Int = 0) -> Self {
//        attribute("min", String(value))
//    }
//
//    /// Specifies what value is the optimal value for the gauge
//    public func optimum(_ value: Int) -> Self {
//        attribute("optimum", String(value))
//    }
//}
