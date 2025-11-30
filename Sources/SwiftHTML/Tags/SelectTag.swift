/// The `<select>` element is used to create a drop-down list.
///
/// The `<select>` element is most often used in a form, to collect user input.
///
/// The name attribute is needed to reference the form data after the form is submitted (if you omit the name attribute, no data from the drop-down list will be submitted).
///
/// The id attribute is needed to associate the drop-down list with a label.
///
/// The `<option>` tags inside the `<select>` element define the available options in the drop-down list.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Select:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    NameAttributeModifier
//autocomplete — Hint for form autofill feature
//✅disabled — Whether the form control is disabled
//✅form — Associates the element with a form element
//multiple — Whether to allow multiple values
//✅name — Name of the element to use for form submission and in the form.elements API
//required — Whether the control is required for form submission
//size — Size of the control
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

//extension Select {
//
//    /// Specifies that the drop-down list should automatically get focus when the page loads
//    public func autofocus(_ condition: Bool = true) -> Self {
//        flagAttribute("autofocus", nil, condition)
//    }
//
//    /// Specifies that a drop-down list should be disabled
//    public func disabled(_ condition: Bool = true) -> Self {
//        flagAttribute("disabled", nil, condition)
//    }
//
//    /// Defines which form the drop-down list belongs to
//    public func form(_ value: String) -> Self {
//        attribute("form", value)
//    }
//
//    /// Specifies that multiple options can be selected at once
//    public func multiple(_ condition: Bool = true) -> Self {
//        flagAttribute("multiple", nil, condition)
//    }
//
//    /// Defines a name for the drop-down list
//    public func name(_ value: String) -> Self {
//        attribute("name", value)
//    }
//
//    /// Specifies that the user is required to select a value before submitting the form
//    public func required(_ condition: Bool = true) -> Self {
//        flagAttribute("required", nil, condition)
//    }
//
//    /// Defines the number of visible options in a drop-down list
//    public func size(_ value: Int) -> Self {
//        attribute("size", String(value))
//    }
//}
