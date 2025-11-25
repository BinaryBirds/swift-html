///
/// The `<address>` tag defines the contact information for the author/owner of a document or an article.
///
/// The contact information can be an email address, URL, physical address, phone number, social media handle, etc.
///
/// The text in the `<address>` element usually renders in italic, and browsers will always add a line break before and after the `<address>` element.
///
/// [HTML Standard - The address element](https://html.spec.whatwg.org/multipage/sections.html#the-address-element)
///
public struct Address:
    StandardTag,
    FlowContent,
    PalpableContent,
    GlobalAttributeModifier
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

    /// Creates an `<address>` element using a result builder.
    ///
    /// Use this initializer when you want to compose the element’s children declaratively. The closure can return any valid phrasing content, which will be inserted as the children of the `<address>` tag.
    ///
    /// - Parameter block: A closure that produces the child elements for the `<address>` element.
    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
