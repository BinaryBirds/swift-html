import SGML
import Testing

@testable import HTML

@Suite
struct AutoCompleteAttributeTestSuite {

    @Test
    func rendersAutoCompleteValues() async throws {
        let cases: [(AutoCompleteAttributeValue, String)] = [
            (.off, "off"),
            (.on, "on"),
            (.name, "name"),
            (.honorificPrefix, "honorific-prefix"),
            (.givenName, "given-name"),
            (.additionalName, "additional-name"),
            (.familyName, "family-name"),
            (.honorificSuffix, "honorific-suffix"),
            (.nickname, "nickname"),
            (.username, "username"),
            (.newPassword, "new-password"),
            (.currentPassword, "current-password"),
            (.oneTimeCode, "one-time-code"),
            (.organizationTitle, "organization-title"),
            (.organization, "organization"),
            (.streetAddress, "street-address"),
            (.addressLine1, "address-line1"),
            (.addressLine2, "address-line2"),
            (.addressLine3, "address-line3"),
            (.addressLevel4, "address-level4"),
            (.addressLevel3, "address-level3"),
            (.addressLevel2, "address-level2"),
            (.addressLevel1, "address-level1"),
            (.country, "country"),
            (.countryName, "country-name"),
            (.postalCode, "postal-code"),
            (.ccName, "cc-name"),
            (.ccGivenName, "cc-given-name"),
            (.ccAdditionalName, "cc-additional-name"),
            (.ccFamilyName, "cc-family-name"),
            (.ccNumber, "cc-number"),
            (.ccExp, "cc-exp"),
            (.ccExpMonth, "cc-exp-month"),
            (.ccExpYear, "cc-exp-year"),
            (.ccCsc, "cc-csc"),
            (.ccType, "cc-type"),
            (.transactionCurrency, "transaction-currency"),
            (.transactionAmount, "transaction-amount"),
            (.language, "language"),
            (.bday, "bday"),
            (.bdayDay, "bday-day"),
            (.bdayMonth, "bday-month"),
            (.bdayYear, "bday-year"),
            (.sex, "sex"),
            (.url, "url"),
            (.photo, "photo"),
            (.tel, "tel"),
            (.telCountryCode, "tel-country-code"),
            (.telNational, "tel-national"),
            (.telAreaCode, "tel-area-code"),
            (.telLocal, "tel-local"),
            (.telLocalPrefix, "tel-local-prefix"),
            (.telLocalSuffix, "tel-local-suffix"),
            (.telExtension, "tel-extension"),
            (.email, "email"),
            (.impp, "impp"),
            (.home, "home"),
            (.work, "work"),
            (.mobile, "mobile"),
            (.fax, "fax"),
            (.pager, "pager"),
            (.shipping, "shipping"),
            (.billing, "billing"),
            (.webauthn, "webauthn"),
        ]

        for (value, raw) in cases {
            let tag = Input()
                .autoComplete(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <input autocomplete="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }

    @Test
    func rendersAutoCompleteString() async throws {
        let tag = Input()
            .autoComplete("section-blue shipping street-address")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input autocomplete="section-blue shipping street-address">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rendersAutoCompleteBoolean() async throws {
        let tag = Input()
            .autoComplete()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input autocomplete>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
