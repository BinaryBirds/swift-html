import SGML

/// The `<wbr>` (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break.
///
/// **Tip:** When a word is too long, the browser might break it at the wrong place. You can use the `<wbr>` element to add word break opportunities.
public struct Wbr:
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
