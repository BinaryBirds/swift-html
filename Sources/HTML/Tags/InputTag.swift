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
//✅accept — Hint for expected file type in file upload controls
//✅alpha — Allow the color's alpha component to be set
//✅alt — Replacement text for use when images are not available
//✅autocomplete — Hint for form autofill feature
//✅checked — Whether the control is checked
//✅colorspace — The color space of the serialized color
//✅dirname — Name of form control to use for sending the element's directionality in form submission
//✅disabled — Whether the form control is disabled
//✅form — Associates the element with a form element
//✅formaction — URL to use for form submission
//✅formenctype — Entry list encoding type to use for form submission
//✅formmethod — Variant to use for form submission
//✅formnovalidate — Bypass form control validation for form submission
//✅formtarget — Navigable for form submission
//✅height — Vertical dimension
//✅list — List of autocomplete options
//✅max — Maximum value
//✅maxlength — Maximum length of value
//✅min — Minimum value
//✅minlength — Minimum length of value
//✅multiple — Whether to allow multiple values
//✅name — Name of the element to use for form submission and in the form.elements API
//✅pattern — Pattern to be matched by the form control's value
//✅placeholder — User-visible label to be placed within the form control
//✅popovertarget — Targets a popover element to toggle, show, or hide
//✅popovertargetaction — Indicates whether a targeted popover element is to be toggled, shown, or hidden
//✅readonly — Whether to allow the value to be edited by the user
//✅required — Whether the control is required for form submission
//✅size — Size of the control
//✅src — Address of the resource
//✅step — Granularity to be matched by the form control's value
//⚠️type — Type of form control
//✅value — Value of the form control
//✅width — Horizontal dimension
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
