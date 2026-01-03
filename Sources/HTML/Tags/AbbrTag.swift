import SGML

///
/// The `<abbr>` tag defines an abbreviation or an acronym, like "HTML", "CSS", "Mr.", "Dr.", "ASAP", "ATM".
///
/// **Tip:** Use the global title attribute to show the description for the abbreviation/acronym when you mouse over the element.
///
/// [HTML Standard - The abbr element](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element)
///
public struct Abbr:
    StandardTag,
    // attribute modifiers
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

    /// Creates a tag containing the given text.
    ///
    /// - Parameter contents: The textual content representing the abbreviation.
    public init(
        _ contents: String
    ) {
        // Phrasing content.
        self.init(
            children: [
                Text(contents)
            ]
        )
    }
}
