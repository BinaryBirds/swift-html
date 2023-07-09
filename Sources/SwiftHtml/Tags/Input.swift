//
//  Input.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<input>` tag specifies an input field where the user can enter data.
///
/// The `<input>` element is the most important form element.
///
/// The `<input>` element can be displayed in several ways, depending on the type attribute.
open class Input: EmptyTag {
    
    public init() {
        super.init(node: EmptyTag.defaultNode(Input.self))
    }
}

public extension Input {
    
    enum `Type`: String {
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
    
    /// Sets both the name and id
    func key(_ value: String) -> Self {
        attribute("id", value).attribute("name", value)
    }
    
    /// Specifies a filter for what file types the user can pick from the file input dialog box (only for type="file")
    func accept(_ value: String?) -> Self {
        attribute("accept", value)
    }
    
    /// Specifies an alternate text for images (only for type="image")
    func alt(_ value: String) -> Self {
        attribute("alt", value)
    }
    
    /// Specifies whether an <input> element should have autocomplete enabled
    func autocomplete(_ value: Bool = true) -> Self {
        attribute("autocomplete", value ? "on" : "off")
    }
    
    /// Specifies that an <input> element should automatically get focus when the page loads
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio")
    func checked(_ value: Bool = true) -> Self {
        guard value else {
            deleteAttribute("checked")
            return self
        }
        return flagAttribute("checked")
    }
    
    /// Specifies that the text direction will be submitted
    func dirname(_ value: String) -> Self {
        attribute("dirname", value)
    }
    
    /// Specifies that an <input> element should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies the form the <input> element belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image")
    func formaction(_ value: String) -> Self {
        attribute("formaction", value)
    }
    
    /// Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image")
    func formenctype(_ value: Enctype = .urlencoded) -> Self {
        attribute("formenctype", value.rawValue)
    }
    
    /// Defines the HTTP method for sending data to the action URL (for type="submit" and type="image")
    func formmethod(_ value: Method = .get) -> Self {
        attribute("formmethod", value.rawValue)
    }
    
    /// Defines that form elements should not be validated when submitted
    func formnovalidate(_ condition: Bool = true) -> Self {
        flagAttribute("formnovalidate", nil, condition)
    }
    
    /// Specifies where to display the response that is received after submitting the form (for type="submit" and type="image")
    func formtarget(_ value: TargetFrame) -> Self {
        attribute("formtarget", value.rawValue)
    }
    
    /// Specifies the height of an <input> element (only for type="image")
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Refers to a `<datalist>` element that contains pre-defined options for an `<input>` element
    func list(_ value: String) -> Self {
        attribute("list", value)
    }
    
    /// Specifies the maximum value for an `<input>` element
    func max(_ value: String) -> Self {
        attribute("max", value)
    }
    
    /// Specifies the maximum number of characters allowed in an `<input>` element
    func maxlength(_ value: Int) -> Self {
        attribute("maxlength", String(value))
    }
    
    /// Specifies a minimum value for an `<input>` element
    func min(_ value: String) -> Self {
        attribute("min", value)
    }
    
    /// Specifies the minimum number of characters required in an `<input>` element
    func minlength(_ value: Int) -> Self {
        attribute("minlength", String(value))
    }
    
    /// Specifies that a user can enter more than one value in an `<input>` element
    func multiple(_ condition: Bool = true) -> Self {
        flagAttribute("multiple", nil, condition)
    }
    
    /// Specifies the name of an `<input>` element
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies a regular expression that an `<input>` element's value is checked against
    func pattern(_ value: String) -> Self {
        attribute("pattern", value)
    }
    
    /// Specifies a short hint that describes the expected value of an `<input>` element
    func placeholder(_ value: String?) -> Self {
        attribute("placeholder", value)
    }
    
    /// Specifies that an input field is read-only
    func readonly(_ condition: Bool = true) -> Self {
        flagAttribute("readonly", nil, condition)
    }
    
    /// Specifies that an input field must be filled out before submitting the form
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Specifies the width, in characters, of an `<input>` element
    func size(_ value: Int) -> Self {
        attribute("size", String(value))
    }
    
    /// Specifies the URL of the image to use as a submit button (only for type="image")
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the interval between legal numbers in an input field
    func step(_ value: Int) -> Self {
        attribute("step", String(value))
    }
    
    /// Specifies the type `<input>` element to display
    func type(_ value: Type) -> Self {
        attribute("type", value.rawValue)
    }

    /// Specifies the value of an `<input>` element
    func value(_ value: String?) -> Self {
        attribute("value", value)
    }
    
    /// Specifies the width of an `<input>` element (only for type="image")
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
