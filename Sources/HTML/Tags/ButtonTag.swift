import SGML

/// The `<button>` tag defines a clickable button.
///
/// Inside a `<button>` element you can put text (and tags like `<i>`, `<b>`, `<strong>`, `<br>`, `<img>`, etc.). That is not possible with a button created with the `<input>` element!
///
/// **Tip:** Always specify the type attribute for a `<button>` element, to tell browsers what type of button it is.
///
/// **Tip:** You can easily style buttons with CSS! Look at the examples below or visit our CSS Buttons tutorial.
public struct Button:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    FormActionAttributeModifier,
    FormEncTypeAttributeModifier,
    FormMethodAttributeModifier,
    FormNoValidateAttributeModifier,
    FormTargetAttributeModifier,
    NameAttributeModifier,
    CommandAttributeModifier,
    CommandForAttributeModifier,
    PopoverTargetAttributeModifier,
    PopoverTargetActionAttributeModifier,
    TypeAttributeModifier,
    ValueAttributeModifier,
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

    // MARK: -

    public enum Types: String, AttributeValueRepresentable {
        /// The button is a clickable button
        case button
        /// The button is a submit button (submits form-data)
        case submit
        /// The button is a reset button (resets the form-data to its initial values)
        case reset
    }

    public typealias TypeAttributeValueType = Types
}
