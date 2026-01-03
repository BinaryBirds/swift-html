import SGML

/// The `<input>` tag specifies an input field where the user can enter data.
///
/// The `<input>` element is the most important form element.
///
/// The `<input>` element can be displayed in several ways, depending on the type attribute.
public struct Input:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    AltAttributeModifier,
    AcceptAttributeModifier,
    AlphaAttributeModifier,
    AutoCompleteAttributeModifier,
    CheckedAttributeModifier,
    ColorspaceAttributeModifier,
    NameAttributeModifier,
    DirnameAttributeModifier,
    FormAttributeModifier,
    FormActionAttributeModifier,
    FormEncTypeAttributeModifier,
    FormMethodAttributeModifier,
    FormNoValidateAttributeModifier,
    FormTargetAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    MultipleAttributeModifier,
    SrcAttributeModifier,
    ValueAttributeModifier,
    DisabledAttributeModifier,
    TypeAttributeModifier,
    PlaceholderAttributeModifier,
    ListAttributeModifier,
    MaxAttributeModifier,
    MaxLengthAttributeModifier,
    MinAttributeModifier,
    MinLengthAttributeModifier,
    PatternAttributeModifier,
    PopoverTargetAttributeModifier,
    PopoverTargetActionAttributeModifier,
    ReadOnlyAttributeModifier,
    RequiredAttributeModifier,
    SizeAttributeModifier,
    StepAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            //            If the type attribute is not in the Hidden state: Interactive content.
            //            If the type attribute is not in the Hidden state: Listed, labelable, submittable, resettable, and autocapitalize-and-autocorrect inheriting form-associated element.
            //            If the type attribute is in the Hidden state: Listed, submittable, resettable, and autocapitalize-and-autocorrect inheriting form-associated element.
            //            If the type attribute is not in the Hidden state: Palpable content.
        ]
    }

    public init() {
        self.attributes = .init()
    }

    // MARK: - attributes

    public enum Types: String, AttributeValueRepresentable {
        case button
        case checkbox
        case color
        case date
        case datetimeLocal = "datetime-local"
        case email
        case file
        case hidden
        case image
        case month
        case number
        case password
        case radio
        case range
        case reset
        case search
        case submit
        case tel
        case text
        case time
        case url
        case week
    }

    public typealias TypeAttributeValueType = Types

}
