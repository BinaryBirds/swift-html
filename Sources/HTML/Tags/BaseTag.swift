/// The `<base>` tag specifies the base URL and/or target for all relative URLs in a document.
///
/// The `<base>` tag must have either an href or a target attribute present, or both.
///
/// There can only be one single `<base>` element in a document, and it must be inside the `<head>` element.
public struct Base:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    HrefAttributeModifier,
    TargetAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata
        ]
    }

    public init() {
        self.attributes = .init()
    }
}
