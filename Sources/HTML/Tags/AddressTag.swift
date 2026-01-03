import SGML

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
    // attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
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
    /// - Parameter contents: The textual content.
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
        // Flow content,
        // but with no heading content descendants,
        // no sectioning content descendants,
        // and no header, footer, or address element descendants.
        self.init(children: block())
    }
}
