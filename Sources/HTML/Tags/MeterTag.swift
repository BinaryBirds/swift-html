import SGML

/// The `<meter>` tag defines a scalar measurement within a known range, or a fractional value.
///
/// Examples: Disk usage, the relevance of a query result, etc.
///
/// **Note:** The `<meter>` tag should not be used to indicate progress (as in a progress bar). For progress bars, use the `<progress>` tag.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Meter:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ValueAttributeModifier,
    MinAttributeModifier,
    MaxAttributeModifier,
    LowAttributeModifier,
    HighAttributeModifier,
    OptimumAttributeModifier,
    FormAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
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

    public typealias ValueAttributeValueType = Double

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
