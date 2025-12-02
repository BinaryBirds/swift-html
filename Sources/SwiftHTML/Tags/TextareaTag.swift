/// The `<textarea>` tag defines a multi-line text input control.
///
/// The `<textarea>` element is often used in a form, to collect user inputs like comments or reviews.
///
/// A text area can hold an unlimited number of characters, and the text renders in a fixed-width font (usually Courier).
///
/// The size of a text area is specified by the `<cols>` and `<rows>` attributes (or with CSS).
///
/// The name attribute is needed to reference the form data after the form is submitted (if you omit the name attribute, no data from the text area will be submitted).
///
/// The id attribute is needed to associate the text area with a label.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Textarea:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    AutocompleteAttributeModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    NameAttributeModifier,
    PlaceholderAttributeModifier,
    ReadonlyAttributeModifier,
    RequiredAttributeModifier
//✅autocomplete — Hint for form autofill feature
//cols — Maximum number of characters per line
//dirname — Name of form control to use for sending the element's directionality in form submission
//✅disabled — Whether the form control is disabled
//✅form — Associates the element with a form element
//maxlength — Maximum length of value
//minlength — Minimum length of value
//✅name — Name of the element to use for form submission and in the form.elements API
//✅placeholder — User-visible label to be placed within the form control
//✅readonly — Whether to allow the value to be edited by the user
//✅required — Whether the control is required for form submission
//rows — Number of lines to show
//wrap — How the value of the form control is to be wrapped for form submission
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            .interactive,
            //            Listed, labelable, submittable, resettable, and autocapitalize-and-autocorrect inheriting form-associated element.
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

//extension Textarea {
//
//    public enum Wrap: String {
//        /// The text in the textarea is not wrapped when submitted in a form. This is default
//        case soft
//        /// The text in the textarea is wrapped (contains newlines) when submitted in a form. When "hard" is used, the cols attribute must be specified
//        case hard
//    }
//
//    /// Specifies the visible width of a text area
//    public func cols(_ value: Int) -> Self {
//        attribute("cols", String(value))
//    }
//
//    /// Specifies that the text direction of the textarea will be submitted
//    public func dirname(_ value: String) -> Self {
//        attribute("dirname", value)
//    }
//
//    /// Specifies the maximum number of characters allowed in the text area
//    public func maxlength(_ value: Int) -> Self {
//        attribute("maxlength", String(value))
//    }
//
//    /// Specifies the visible width of a text area
//    public func rows(_ value: Int) -> Self {
//        attribute("rows", String(value))
//    }
//
//    /// Specifies how the text in a text area is to be wrapped when submitted in a form
//    public func wrap(_ value: Wrap) -> Self {
//        attribute("wrap", value.rawValue)
//    }
//}
