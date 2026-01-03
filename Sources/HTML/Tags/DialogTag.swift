import SGML

/// The `<dialog>` tag defines a dialog box or subwindow.
///
/// The `<dialog>` element makes it easy to create popup dialogs and modals on a web page.
public struct Dialog:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ClosedByAttributeModifier,
    OpenAttributeModifier,
    // categories
    FlowContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        self.init(children: block())
    }
}
