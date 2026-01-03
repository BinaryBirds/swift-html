import SGML

/// The `<param>` tag is used to define parameters for an `<object>` element.
public struct Param:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    NameAttributeModifier,
    ValueAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        []
    }

    public init() {
        self.attributes = .init()
    }
}
