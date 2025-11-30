/// The `<hr>` tag defines a thematic break in an HTML page (a shift of topic).
///
/// The `<hr>` element is most often displayed as a horizontal rule that is used to separate content (or define a change) in an HTML page.
public struct Hr:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow
            // select element inner content elements.
        ]
    }

    public init() {
        self.attributes = .init()
    }
}
