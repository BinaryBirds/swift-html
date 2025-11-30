/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
public struct Bdo:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier
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
            .palpable,
        ]
    }

    init(
        attributes: AttributeStore = .init(),
        children: [Element],
        dir value: DirAttribute.Value
    ) {
        self.attributes = attributes
        self.children = children

        self = self.setAttribute(DirAttribute(value))
    }

    public init(
        _ contents: String,
        dir: DirAttribute.Value
    ) {
        self.init(
            children: [
                Text(contents)
            ],
            dir: dir
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element],
        dir: DirAttribute.Value
    ) {
        self.init(
            children: block(),
            dir: dir
        )
    }
}
