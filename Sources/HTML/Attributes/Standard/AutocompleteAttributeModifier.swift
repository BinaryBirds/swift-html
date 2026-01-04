import SGML

public enum AutoCompleteAttributeValue: String, AttributeValueRepresentable {
    /// Autofill is disabled for this field.
    case off
    /// Autofill is enabled without further detail.
    case on
    /// Autofill field: full name.
    case name
    /// Autofill field: honorific prefix (e.g., Dr., Ms.).
    case honorificPrefix = "honorific-prefix"
    /// Autofill field: given name.
    case givenName = "given-name"
    /// Autofill field: additional name.
    case additionalName = "additional-name"
    /// Autofill field: family name.
    case familyName = "family-name"
    /// Autofill field: honorific suffix (e.g., Jr., III).
    case honorificSuffix = "honorific-suffix"
    /// Autofill field: nickname.
    case nickname
    /// Autofill field: username.
    case username
    /// Autofill field: new password.
    case newPassword = "new-password"
    /// Autofill field: current password.
    case currentPassword = "current-password"
    /// Autofill field: one-time code.
    case oneTimeCode = "one-time-code"
    /// Autofill field: organization title.
    case organizationTitle = "organization-title"
    /// Autofill field: organization.
    case organization
    /// Autofill field: street address.
    case streetAddress = "street-address"
    /// Autofill field: address line 1.
    case addressLine1 = "address-line1"
    /// Autofill field: address line 2.
    case addressLine2 = "address-line2"
    /// Autofill field: address line 3.
    case addressLine3 = "address-line3"
    /// Autofill field: address level 4.
    case addressLevel4 = "address-level4"
    /// Autofill field: address level 3.
    case addressLevel3 = "address-level3"
    /// Autofill field: address level 2.
    case addressLevel2 = "address-level2"
    /// Autofill field: address level 1.
    case addressLevel1 = "address-level1"
    /// Autofill field: country code.
    case country
    /// Autofill field: country name.
    case countryName = "country-name"
    /// Autofill field: postal code.
    case postalCode = "postal-code"
    /// Autofill field: cardholder name.
    case ccName = "cc-name"
    /// Autofill field: cardholder given name.
    case ccGivenName = "cc-given-name"
    /// Autofill field: cardholder additional name.
    case ccAdditionalName = "cc-additional-name"
    /// Autofill field: cardholder family name.
    case ccFamilyName = "cc-family-name"
    /// Autofill field: credit card number.
    case ccNumber = "cc-number"
    /// Autofill field: credit card expiration date.
    case ccExp = "cc-exp"
    /// Autofill field: credit card expiration month.
    case ccExpMonth = "cc-exp-month"
    /// Autofill field: credit card expiration year.
    case ccExpYear = "cc-exp-year"
    /// Autofill field: credit card security code.
    case ccCsc = "cc-csc"
    /// Autofill field: credit card type.
    case ccType = "cc-type"
    /// Autofill field: transaction currency.
    case transactionCurrency = "transaction-currency"
    /// Autofill field: transaction amount.
    case transactionAmount = "transaction-amount"
    /// Autofill field: language.
    case language
    /// Autofill field: birthday.
    case bday
    /// Autofill field: birthday day.
    case bdayDay = "bday-day"
    /// Autofill field: birthday month.
    case bdayMonth = "bday-month"
    /// Autofill field: birthday year.
    case bdayYear = "bday-year"
    /// Autofill field: sex or gender.
    case sex
    /// Autofill field: URL.
    case url
    /// Autofill field: photo.
    case photo
    /// Autofill field: telephone number.
    case tel
    /// Autofill field: telephone country code.
    case telCountryCode = "tel-country-code"
    /// Autofill field: telephone national number.
    case telNational = "tel-national"
    /// Autofill field: telephone area code.
    case telAreaCode = "tel-area-code"
    /// Autofill field: telephone local number.
    case telLocal = "tel-local"
    /// Autofill field: telephone local prefix.
    case telLocalPrefix = "tel-local-prefix"
    /// Autofill field: telephone local suffix.
    case telLocalSuffix = "tel-local-suffix"
    /// Autofill field: telephone extension.
    case telExtension = "tel-extension"
    /// Autofill field: email address.
    case email
    /// Autofill field: instant messaging protocol endpoint.
    case impp
    /// Autofill contact type: home.
    case home
    /// Autofill contact type: work.
    case work
    /// Autofill contact type: mobile.
    case mobile
    /// Autofill contact type: fax.
    case fax
    /// Autofill contact type: pager.
    case pager
    /// Autofill address type: shipping.
    case shipping
    /// Autofill address type: billing.
    case billing
    /// Use WebAuthn conditional mediation for this field.
    case webauthn
}

public protocol AutoCompleteAttributeModifier {
    associatedtype AutoCompleteAttributeValueType: AttributeValueRepresentable =
        AutoCompleteAttributeValue
}

extension AutoCompleteAttributeModifier where Self: Attributes & Mutable {

    public func autoComplete() -> Self {
        setAttribute(
            key: StandardAttributeKey.autocomplete
        )
    }

    public func autoComplete(
        _ value: AutoCompleteAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.autocomplete,
            value: value?.attributeValue
        )
    }

    public func autoComplete(
        _ value: String?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.autocomplete,
            value: value
        )
    }
}
