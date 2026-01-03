import SGML

/// The `<progress>` tag represents the completion progress of a task.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Progress:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ValueAttributeModifier,
    MaxAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        [.flow, .phrasing, .labelable, .palpable]
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
