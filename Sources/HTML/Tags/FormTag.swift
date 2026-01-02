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
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ActionAttributeModifier,
    AutocompleteAttributeModifier,
    EnctypeAttributeModifier,
    MethodAttributeModifier,
    NameAttributeModifier,
    TargetAttributeModifier

//accept-charset — Character encodings to use for form submission
//✅action — URL to use for form submission
//✅autocomplete — Default setting for autofill feature for controls in the form
//✅enctype — Entry list encoding type to use for form submission
//✅method — Variant to use for form submission
//✅name — Name of form to use in the document.forms API
//novalidate — Bypass form control validation for form submission
//✅ target — Navigable for form submission
//rel

{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .palpable,
        ]
    }

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
}
//
//extension Form {
//
//    public enum Rel: String {
//        /// Specifies that the referenced document is not a part of the current site
//        case external
//        /// Links to a help document
//        case help
//        /// Links to copyright information for the document
//        case license
//        /// The next document in a selection
//        case next
//        /// Links to an unendorsed document, like a paid link.
//        /// ("nofollow" is used by Google, to specify that the Google search spider should not follow that link)
//        case nofollow
//
//        case noopener
//        /// Specifies that the browser should not send a HTTP referrer header if the user follows the hyperlink
//        case noreferrer
//        case opener
//        /// The previous document in a selection
//        case prev
//        /// Links to a search tool for the document
//        case search
//    }
//
//    /// Specifies the character encodings that are to be used for the form submission
//    public func acceptCharset(_ value: String) -> Self {
//        attribute("accept-charset", value)
//    }
//
//    /// Specifies that the form should not be validated when submitted
//    public func novalidate(_ condition: Bool = true) -> Self {
//        flagAttribute("novalidate", nil, condition)
//    }
//
//    /// Specifies the relationship between a linked resource and the current document
//    public func rel(_ value: Rel) -> Self {
//        attribute("rel", value.rawValue)
//    }
