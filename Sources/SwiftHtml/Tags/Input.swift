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
    
    override open class var name: String { .init(describing: Input.self).lowercased() }
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
    @discardableResult
    func key(_ value: String) -> Self {
        attribute("id", value).attribute("name", value)
    }
    
    /// Specifies a filter for what file types the user can pick from the file input dialog box (only for type="file")
    @discardableResult
    func accept(_ value: String?) -> Self {
        attribute("accept", value)
    }
    
    /// Specifies an alternate text for images (only for type="image")
    @discardableResult
    func alt(_ value: String) -> Self {
        attribute("alt", value)
    }
    
    /// Specifies whether an <input> element should have autocomplete enabled
    @discardableResult
    func autocomplete(_ value: Bool = true, _ condition: Bool = true) -> Self {
        autocomplete(value ? .on : .off, condition)
    }
    
    /// Specifies additional <input> autocomplete attributes
    /// https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete
    @discardableResult
    func autocomplete(_ value: Attribute.Autocomplete, _ condition: Bool = true) -> Self {
        attribute("autocomplete", value.rawValue, condition)
    }
    
    /// Specifies that an <input> element should automatically get focus when the page loads
    @discardableResult
    func autofocus(_ condition: Bool = true) -> Self {
        flagAttribute("autofocus", nil, condition)
    }
    
    /// Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio")
    @discardableResult
    func checked(_ value: Bool = true) -> Self {
        guard value else {
            deleteAttribute("checked")
            return self
        }
        return flagAttribute("checked")
    }
    
    /// Specifies that the text direction will be submitted
    @discardableResult
    func dirname(_ value: String) -> Self {
        attribute("dirname", value)
    }
    
    /// Specifies that an <input> element should be disabled
    @discardableResult
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies the form the <input> element belongs to
    @discardableResult
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image")
    @discardableResult
    func formaction(_ value: String) -> Self {
        attribute("formaction", value)
    }
    
    /// Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image")
    @discardableResult
    func formenctype(_ value: Enctype = .urlencoded) -> Self {
        attribute("formenctype", value.rawValue)
    }
    
    /// Defines the HTTP method for sending data to the action URL (for type="submit" and type="image")
    @discardableResult
    func formmethod(_ value: Method = .get) -> Self {
        attribute("formmethod", value.rawValue)
    }
    
    /// Defines that form elements should not be validated when submitted
    @discardableResult
    func formnovalidate(_ condition: Bool = true) -> Self {
        flagAttribute("formnovalidate", nil, condition)
    }
    
    /// Specifies where to display the response that is received after submitting the form (for type="submit" and type="image")
    @discardableResult
    func formtarget(_ value: TargetFrame) -> Self {
        attribute("formtarget", value.rawValue)
    }
    
    /// Specifies the height of an <input> element (only for type="image")
    @discardableResult
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Refers to a `<datalist>` element that contains pre-defined options for an `<input>` element
    @discardableResult
    func list(_ value: String) -> Self {
        attribute("list", value)
    }
    
    /// Specifies the maximum value for an `<input>` element
    @discardableResult
    func max(_ value: String) -> Self {
        attribute("max", value)
    }
    
    /// Specifies the maximum number of characters allowed in an `<input>` element
    @discardableResult
    func maxlength(_ value: Int) -> Self {
        attribute("maxlength", String(value))
    }
    
    /// Specifies a minimum value for an `<input>` element
    @discardableResult
    func min(_ value: String) -> Self {
        attribute("min", value)
    }
    
    /// Specifies the minimum number of characters required in an `<input>` element
    @discardableResult
    func minlength(_ value: Int) -> Self {
        attribute("minlength", String(value))
    }
    
    /// Specifies that a user can enter more than one value in an `<input>` element
    @discardableResult
    func multiple(_ condition: Bool = true) -> Self {
        flagAttribute("multiple", nil, condition)
    }
    
    /// Specifies the name of an `<input>` element
    @discardableResult
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies a regular expression that an `<input>` element's value is checked against
    @discardableResult
    func pattern(_ value: String) -> Self {
        attribute("pattern", value)
    }
    
    /// Specifies a short hint that describes the expected value of an `<input>` element
    @discardableResult
    func placeholder(_ value: String?) -> Self {
        attribute("placeholder", value)
    }
    
    /// Specifies that an input field is read-only
    @discardableResult
    func readonly(_ condition: Bool = true) -> Self {
        flagAttribute("readonly", nil, condition)
    }
    
    /// Specifies that an input field must be filled out before submitting the form
    @discardableResult
    func required(_ condition: Bool = true) -> Self {
        flagAttribute("required", nil, condition)
    }
    
    /// Specifies the width, in characters, of an `<input>` element
    @discardableResult
    func size(_ value: Int) -> Self {
        attribute("size", String(value))
    }
    
    /// Specifies the URL of the image to use as a submit button (only for type="image")
    @discardableResult
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the interval between legal numbers in an input field
    @discardableResult
    func step(_ value: Int) -> Self {
        attribute("step", String(value))
    }
    
    /// Specifies the type `<input>` element to display
    @discardableResult
    func type(_ value: Type) -> Self {
        attribute("type", value.rawValue)
    }

    /// Specifies the value of an `<input>` element
    @discardableResult
    func value(_ value: String?) -> Self {
        attribute("value", value)
    }
    
    /// Specifies the width of an `<input>` element (only for type="image")
    @discardableResult
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}

extension Attribute {
 
    public enum Autocomplete: String {
        case off
        case on
        case name
        case honorificPrefix = "honorific-prefix"
        case givenName = "given-name"
        case additionalName = "additional-name"
        case familyName = "family-name"
        case honorificSuffix = "honorific-suffix"
        case nickname
        case email
        case username
        case newPassword = "new-password"
        case currentPassword = "current-password"
        case oneTimeCode = "one-time-code"
        case organizationTitle = "organization-title"
        case organization
        case streetAddress = "street-address"
        case addressLine1 = "address-line1"
        case addressLine2 = "address-line2"
        case addressLine3 = "address-line3"
        case addressLevel1 = "address-level1"
        case addressLevel2 = "address-level2"
        case addressLevel3 = "address-level3"
        case addressLevel4 = "address-level4"
        case country
        case countryName = "country-name"
        case postalCode = "postal-code"
        case ccName = "cc-name"
        case ccGivenName = "cc-given-name"
        case ccAdditionalName = "cc-additional-name"
        case ccFamilyName = "cc-family-name"
        case ccNumber = "cc-number"
        case ccExp = "cc-exp"
        case ccExpMonth = "cc-exp-month"
        case ccExpYear = "cc-exp-year"
        case ccCsc = "cc-csc"
        case ccType = "cc-type"
        case transactionCurrency = "transaction-currency"
        case transactionAmount = "transaction-amount"
        case language = "language"
        case bday = "bday"
        case bdayDay = "bday-day"
        case bdayMonth = "bday-month"
        case bdayYear = "bday-year"
        case sex = "sex"
        case tel = "tel"
        case telCountryCode = "tel-country-code"
        case telNational = "tel-national"
        case telAreaCode = "tel-area-code"
        case telLocal = "tel-local"
        case telExtension = "tel-extension"
        case impp = "impp"
        case url = "url"
        case photo = "photo"
        case webauthn = "webauthn"
    }
}
