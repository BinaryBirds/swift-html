import SGML

/// The `<optgroup>` tag is used to group related options in a `<select>` element (drop-down list).
///
/// If you have a long list of options, groups of related options are easier to handle for a user.
public struct Optgroup:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    DisabledAttributeModifier,
    LabelAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            //            select element inner content elements.
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
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
