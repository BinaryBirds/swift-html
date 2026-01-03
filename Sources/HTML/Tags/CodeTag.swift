import SGML

/// The `<code>` tag is used to define a piece of computer code.
///
/// The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS (see example below).
///
/// Also look at:
/// - `<samp>`    Defines sample output from a computer program
/// - `<kbd>`    Defines keyboard input
/// - `<var>`    Defines a variable
/// - `<pre>`    Defines preformatted text
public struct Code:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
    PhrasingContent,
    PalpableContent
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
                Text(contents, isRaw: true)
            ]
        )
    }
}
