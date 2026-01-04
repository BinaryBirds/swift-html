import SGML

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
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    AutoCompleteAttributeModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    ColsAttributeModifier,
    DirnameAttributeModifier,
    MaxLengthAttributeModifier,
    MinLengthAttributeModifier,
    NameAttributeModifier,
    PlaceholderAttributeModifier,
    ReadOnlyAttributeModifier,
    RequiredAttributeModifier,
    RowsAttributeModifier,
    WrapAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
    InteractiveContent,
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
}
