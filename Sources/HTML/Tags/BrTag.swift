import SGML

/// The `<br>` tag inserts a single line break.
///
/// The `<br>` tag is useful for writing addresses or poems.
///
/// The `<br>` tag is an empty tag which means that it has no end tag.
public struct Br:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
        ]
    }

    public init() {
        self.attributes = .init()
    }
}
