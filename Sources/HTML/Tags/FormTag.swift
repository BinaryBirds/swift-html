import SGML

/// The `<form>` tag is used to create an HTML form for user input.
///
/// The `<form>` element can contain one or more of the following form elements:
///
/// - `<input>`
/// - `<textarea>`
/// - `<button>`
/// - `<select>`
/// - `<option>`
/// - `<optgroup>`
/// - `<fieldset>`
/// - `<label>`
/// - `<output>`
public struct Form:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ActionAttributeModifier,
    AcceptCharsetAttributeModifier,
    AutoCompleteAttributeModifier,
    EncTypeAttributeModifier,
    MethodAttributeModifier,
    NameAttributeModifier,
    NoValidateAttributeModifier,
    RelAttributeModifier,
    TargetAttributeModifier,
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
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }

    public enum Rel: String, AttributeValueRepresentable {
        /// Specifies that the referenced document is not a part of the current site
        case external
        /// Links to a help document
        case help
        /// Links to copyright information for the document
        case license
        /// The next document in a selection
        case next
        /// Links to an unendorsed document, like a paid link.
        /// ("nofollow" is used by Google, to specify that the Google search spider should not follow that link)
        case nofollow
        case noopener
        /// Specifies that the browser should not send a HTTP referrer header if the user follows the hyperlink
        case noreferrer
        case opener
        /// The previous document in a selection
        case prev
        /// Links to a search tool for the document
        case search
    }

    public typealias RelAttributeValueType = Rel
}
