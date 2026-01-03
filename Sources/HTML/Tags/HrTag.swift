import SGML

/// The `<hr>` tag defines a thematic break in an HTML page (a shift of topic).
///
/// The `<hr>` element is most often displayed as a horizontal rule that is used to separate content (or define a change) in an HTML page.
public struct Hr:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
    SelectInnerContent
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }
}
