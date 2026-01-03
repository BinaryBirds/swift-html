import SGML

/// The `<output>` tag is used to represent the result of a calculation (like one performed by a script).
public struct Output:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ForAttributeModifier,
    FormAttributeModifier,
    NameAttributeModifier,
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
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent]
    ) {
        self.init(children: block())
    }
}
