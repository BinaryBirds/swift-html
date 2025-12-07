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
    AutocompleteAttributeModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    MultipleAttributeModifier,
    NameAttributeModifier,
    RequiredAttributeModifier,
    SizeAttributeModifier
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
