import SGML

/// The `<input>` tag specifies an input field where the user can enter data.
///
/// The `<input>` element is the most important form element.
///
/// The `<input>` element can be displayed in several ways, depending on the type attribute.
public struct Input:
    ShortTag,
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
    StepAttributeModifier,
    SelectedAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
    InteractiveContent,
    PalpableContent
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

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

    public init() {
        self.attributes = .init()
    }

}
