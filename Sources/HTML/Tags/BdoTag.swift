import SGML

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
public struct Bdo:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
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
        children: [Element],
        dir value: DirAttributeValue
    ) {
        self.attributes = attributes
        self.children = children

        self = self.setAttribute(name: "dir", value: value.attributeValue)
    }

    public init(
        _ contents: String,
        dir: DirAttributeValue
    ) {
        self.init(
            children: [
                Text(contents)
            ],
            dir: dir
        )
    }

    public init(
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent],
        dir: DirAttributeValue
    ) {
        self.init(
            children: block(),
            dir: dir
        )
    }
}
