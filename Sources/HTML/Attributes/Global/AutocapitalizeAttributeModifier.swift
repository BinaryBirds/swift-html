import SGML

public protocol AutocapitalizeAttributeModifier {
    associatedtype AutocapitalizeAttributeValueType: AttributeValueRepresentable = String
}

extension AutocapitalizeAttributeModifier where Self: Attributes & Mutable {

    public func autocapitalize(
        _ value: AutocapitalizeAttributeValueType?
    ) -> Self {
        setAttribute(key: .autocapitalize, value: value?.attributeValue)
    }
}
