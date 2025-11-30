/// The `<option>` tag defines an option in a select list.
///
/// `<option>` elements go inside a `<select>`, `<optgroup>`, or `<datalist>` element.
///
/// **Note:** The `<option>` tag can be used without any attributes, but you usually need the value attribute, which indicates what is sent to the server on form submission.
///
/// **Tip:** If you have a long list of options, you can group related options within the `<optgroup>` tag.
public struct Option:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    DisabledAttributeModifier,
    ValueAttributeModifier
//✅disabled — Whether the form control is disabled
//label — User-visible label
//selected — Whether the option is selected by default
//✅value — Value to be used for form submission
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            //            select element inner content elements.
            //            optgroup element inner content elements.
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
//    /// Specifies a shorter label for an option
//    public func label(_ value: String) -> Self {
//        attribute("label", value)
//    }
//
//    /// Specifies that an option should be pre-selected when the page loads
//    public func selected(_ condition: Bool = true) -> Self {
//        flagAttribute("selected", nil, condition)
//    }
