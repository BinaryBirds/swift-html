/// The `<input>` tag specifies an input field where the user can enter data.
///
/// The `<input>` element is the most important form element.
///
/// The `<input>` element can be displayed in several ways, depending on the type attribute.
public struct Input:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    AltAttributeModifier,
    NameAttributeModifier,
    FormAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    SrcAttributeModifier,
    ValueAttributeModifier
//accept — Hint for expected file type in file upload controls
//alpha — Allow the color's alpha component to be set
//✅alt — Replacement text for use when images are not available
//autocomplete — Hint for form autofill feature
//checked — Whether the control is checked
//colorspace — The color space of the serialized color
//dirname — Name of form control to use for sending the element's directionality in form submission
//disabled — Whether the form control is disabled
//✅form — Associates the element with a form element
//formaction — URL to use for form submission
//formenctype — Entry list encoding type to use for form submission
//formmethod — Variant to use for form submission
//formnovalidate — Bypass form control validation for form submission
//formtarget — Navigable for form submission
//✅height — Vertical dimension
//list — List of autocomplete options
//max — Maximum value
//maxlength — Maximum length of value
//min — Minimum value
//minlength — Minimum length of value
//multiple — Whether to allow multiple values
//✅name — Name of the element to use for form submission and in the form.elements API
//pattern — Pattern to be matched by the form control's value
//placeholder — User-visible label to be placed within the form control
//popovertarget — Targets a popover element to toggle, show, or hide
//popovertargetaction — Indicates whether a targeted popover element is to be toggled, shown, or hidden
//readonly — Whether to allow the value to be edited by the user
//required — Whether the control is required for form submission
//size — Size of the control
//✅src — Address of the resource
//step — Granularity to be matched by the form control's value
//type — Type of form control
//✅value — Value of the form control
//✅width — Horizontal dimension
//Also, the title attribute has special semantics on this element: Description of pattern (when used with pattern attribute)
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
}

//
//extension Input {
//
//    public enum `Type`: String {
//        case button
//        case checkbox
//        case color
//        case date
//        case datetimeLocal = "datetime-local"
//        case email
//        case file
//        case hidden
//        case image
//        case month
//        case number
//        case password
//        case radio
//        case range
//        case reset
//        case search
//        case submit
//        case tel
//        case text
//        case time
//        case url
//        case week
//    }
//
//    /// Sets both the name and id
//    public func key(_ value: String) -> Self {
//        attribute("id", value).attribute("name", value)
//    }
//
//    /// Specifies a filter for what file types the user can pick from the file input dialog box (only for type="file")
//    public func accept(_ value: String?) -> Self {
//        attribute("accept", value)
//    }
//
//    /// Specifies an alternate text for images (only for type="image")
//    public func alt(_ value: String) -> Self {
//        attribute("alt", value)
//    }
//
//    /// Specifies whether an <input> element should have autocomplete enabled
//    public func autocomplete(_ value: Bool = true) -> Self {
//        attribute("autocomplete", value ? "on" : "off")
//    }
//
//    /// Specifies that an <input> element should automatically get focus when the page loads
//    public func autofocus(_ condition: Bool = true) -> Self {
//        flagAttribute("autofocus", nil, condition)
//    }
//
//    /// Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio")
//    public func checked(_ value: Bool = true) -> Self {
//        guard value else {
//            deleteAttribute("checked")
//            return self
//        }
//        return flagAttribute("checked")
//    }
//
//    /// Specifies that the text direction will be submitted
//    public func dirname(_ value: String) -> Self {
//        attribute("dirname", value)
//    }
//
//    /// Specifies that an <input> element should be disabled
//    public func disabled(_ condition: Bool = true) -> Self {
//        flagAttribute("disabled", nil, condition)
//    }
//
//    /// Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image")
//    public func formaction(_ value: String) -> Self {
//        attribute("formaction", value)
//    }
//
//    /// Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image")
//    public func formenctype(_ value: Enctype = .urlencoded) -> Self {
//        attribute("formenctype", value.rawValue)
//    }
//
//    /// Defines the HTTP method for sending data to the action URL (for type="submit" and type="image")
//    public func formmethod(_ value: Method = .get) -> Self {
//        attribute("formmethod", value.rawValue)
//    }
//
//    /// Defines that form elements should not be validated when submitted
//    public func formnovalidate(_ condition: Bool = true) -> Self {
//        flagAttribute("formnovalidate", nil, condition)
//    }
//
//    /// Specifies where to display the response that is received after submitting the form (for type="submit" and type="image")
//    public func formtarget(_ value: TargetFrame) -> Self {
//        attribute("formtarget", value.rawValue)
//    }
//
//    /// Refers to a `<datalist>` element that contains pre-defined options for an `<input>` element
//    public func list(_ value: String) -> Self {
//        attribute("list", value)
//    }
//
//    /// Specifies the maximum value for an `<input>` element
//    public func max(_ value: String) -> Self {
//        attribute("max", value)
//    }
//
//    /// Specifies the maximum number of characters allowed in an `<input>` element
//    public func maxlength(_ value: Int) -> Self {
//        attribute("maxlength", String(value))
//    }
//
//    /// Specifies a minimum value for an `<input>` element
//    public func min(_ value: String) -> Self {
//        attribute("min", value)
//    }
//
//    /// Specifies the minimum number of characters required in an `<input>` element
//    public func minlength(_ value: Int) -> Self {
//        attribute("minlength", String(value))
//    }
//
//    /// Specifies that a user can enter more than one value in an `<input>` element
//    public func multiple(_ condition: Bool = true) -> Self {
//        flagAttribute("multiple", nil, condition)
//    }

//
//    /// Specifies a regular expression that an `<input>` element's value is checked against
//    public func pattern(_ value: String) -> Self {
//        attribute("pattern", value)
//    }
//
//    /// Specifies a short hint that describes the expected value of an `<input>` element
//    public func placeholder(_ value: String?) -> Self {
//        attribute("placeholder", value)
//    }
//
//    /// Specifies that an input field is read-only
//    public func readonly(_ condition: Bool = true) -> Self {
//        flagAttribute("readonly", nil, condition)
//    }
//
//    /// Specifies that an input field must be filled out before submitting the form
//    public func required(_ condition: Bool = true) -> Self {
//        flagAttribute("required", nil, condition)
//    }
//
//    /// Specifies the width, in characters, of an `<input>` element
//    public func size(_ value: Int) -> Self {
//        attribute("size", String(value))
//    }
//
//    /// Specifies the interval between legal numbers in an input field
//    public func step(_ value: Int) -> Self {
//        attribute("step", String(value))
//    }
//
//    /// Specifies the type `<input>` element to display
//    public func type(_ value: Type) -> Self {
//        attribute("type", value.rawValue)
//    }

//}
