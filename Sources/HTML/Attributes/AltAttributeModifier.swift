import SGML

public protocol AltAttributeModifier {
    associatedtype AltAttributeValue: AttributeValueRepresentable = String
}

extension AltAttributeModifier where Self: Attributes & Mutable {

    public func alt(
        _ value: AltAttributeValue?
    ) -> Self {
        setAttribute(key: .alt, value: value?.attributeValue)
    }
}
