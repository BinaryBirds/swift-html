import SGML

/// The `<br>` tag inserts a single line break.
///
/// The `<br>` tag is useful for writing addresses or poems.
///
/// The `<br>` tag is an empty tag which means that it has no end tag.
public struct Br:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
    PhrasingContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }
}
