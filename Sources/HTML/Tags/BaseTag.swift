import SGML

/// The `<base>` tag specifies the base URL and/or target for all relative URLs in a document.
///
/// The `<base>` tag must have either an href or a target attribute present, or both.
///
/// There can only be one single `<base>` element in a document, and it must be inside the `<head>` element.
public struct Base:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    HrefAttributeModifier,
    TargetAttributeModifier,
    // categories
    MetadataContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }
}
