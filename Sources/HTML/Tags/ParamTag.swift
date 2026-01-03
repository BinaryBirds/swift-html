import SGML

/// The `<param>` tag is used to define parameters for an `<object>` element.
public struct Param:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    NameAttributeModifier,
    ValueAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }
}
