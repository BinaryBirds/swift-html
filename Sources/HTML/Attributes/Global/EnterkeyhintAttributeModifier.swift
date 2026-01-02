import SGML

public protocol EnterkeyhintAttributeModifier {
    associatedtype EnterkeyhintAttributeValueType: AttributeValueRepresentable = String
}

extension EnterkeyhintAttributeModifier where Self: Attributes & Mutable {

    public func enterkeyhint(
        _ value: EnterkeyhintAttributeValueType?
    ) -> Self {
        setAttribute(key: .enterkeyhint, value: value?.attributeValue)
    }
}
