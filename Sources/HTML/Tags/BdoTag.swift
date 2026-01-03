import SGML

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
public struct Bdo:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        [.flow, .phrasing, .palpable]
    }

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
        @Builder<Element> _ block: () -> [Element],
        dir: DirAttributeValue
    ) {
        self.init(
            children: block(),
            dir: dir
        )
    }
}
