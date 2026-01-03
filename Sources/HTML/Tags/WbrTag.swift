import SGML

/// The `<wbr>` (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break.
///
/// **Tip:** When a word is too long, the browser might break it at the wrong place. You can use the `<wbr>` element to add word break opportunities.
public struct Wbr:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributesModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public var categories: ContentModel {
        [.flow, .phrasing]
    }

    public init() {
        self.attributes = .init()
    }
}
