/// The `<button>` tag defines a clickable button.
///
/// Inside a `<button>` element you can put text (and tags like `<i>`, `<b>`, `<strong>`, `<br>`, `<img>`, etc.). That is not possible with a button created with the `<input>` element!
///
/// **Tip:** Always specify the type attribute for a `<button>` element, to tell browsers what type of button it is.
///
/// **Tip:** You can easily style buttons with CSS! Look at the examples below or visit our CSS Buttons tutorial.
public struct Button:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    DisabledAttributeModifier,
    FormAttributeModifier,
    FormActionAttributeModifier,
    FormEnctypeAttributeModifier,
    FormMethodAttributeModifier,
    FormTargetAttributeModifier,
    NameAttributeModifier,
    TypeAttributeModifier,
    ValueAttributeModifier
// TODO: -
//command — Indicates to the targeted element which action to take.
//commandfor — Targets another element to be invoked.
//✅disabled — Whether the form control is disabled
//✅form — Associates the element with a form element
//✅formaction — URL to use for form submission
//✅formenctype — Entry list encoding type to use for form submission
//✅formmethod — Variant to use for form submission
//formnovalidate — Bypass form control validation for form submission
//✅formtarget — Navigable for form submission
//✅name — Name of the element to use for form submission and in the form.elements API
//popovertarget — Targets a popover element to toggle, show, or hide
//popovertargetaction — Indicates whether a targeted popover element is to be toggled, shown, or hidden
//⚠️type — Type of button
//✅value — Value to be used for form submission
{

    public struct `Type`: Attribute {

        public enum Value: String {
            /// The button is a clickable button
            case button
            /// The button is a submit button (submits form-data)
            case submit
            /// The button is a reset button (resets the form-data to its initial values)
            case reset
        }

        public var value: String?

        init(
            _ value: Value? = nil
        ) {
            self.value = value?.rawValue
        }
    }

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
            // Listed, labelable, submittable, and autocapitalize-and-autocorrect inheriting form-associated element.
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

    public func `type`(
        _ value: `Type`.Value?
    ) -> Self {
        setAttribute(`Type`(value))
    }
}

//    /// Specifies that the form-data should not be validated on submission. Only for type="submit"
//    public func formnovalidate(_ condition: Bool = true) -> Self {
//        flagAttribute("formnovalidate", nil, condition)
//    }
//
