import SGML

/// The `<hr>` tag defines a thematic break in an HTML page (a shift of topic).
///
/// The `<hr>` element is most often displayed as a horizontal rule that is used to separate content (or define a change) in an HTML page.
public struct Hr:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributesModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore
    public var categories: ContentModel {
        [.flow, .selectInnerContent]
    }

    public init() {
        self.attributes = .init()
    }
}
