import SGML

/// The `<progress>` tag represents the completion progress of a task.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Progress:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ValueAttributeModifier,
    MaxAttributeModifier,
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

    public init(
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }

    public typealias ValueAttributeValueType = Double

}
