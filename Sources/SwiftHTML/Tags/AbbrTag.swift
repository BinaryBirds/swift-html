///
/// The `<abbr>` tag defines an abbreviation or an acronym, like "HTML", "CSS", "Mr.", "Dr.", "ASAP", "ATM".
///
/// **Tip:** Use the global title attribute to show the description for the abbreviation/acronym when you mouse over the element.
///
/// [HTML Standard - The abbr element](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element)
///
public struct Abbr:
    StandardTag,
    FlowContent,
    PhrasingContent,
    PalpableContent,
    GlobalAttributeModifier,
    TitleAttributeModifier
{
    /// The attribute storage for the `<abbr>` element.
    ///
    /// Use this to configure global HTML attributes such as `id`, `class`, `style`, and others.
    public var attributes: AttributeStore

    /// The child elements contained within the `<abbr>` tag.
    ///
    /// Typically this holds text nodes, but any valid phrasing content is allowed.
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    /// Creates an `<abbr>` element containing the given text.
    ///
    /// - Parameter contents: The textual content representing the abbreviation.
    ///   For example: `"HTML"` or `"CSS"`.
    public init(
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents)
            ]
        )
    }
}
