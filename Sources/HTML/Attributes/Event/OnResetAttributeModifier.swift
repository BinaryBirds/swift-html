import SGML

public protocol OnResetAttributeModifier {
    associatedtype OnResetAttributeValueType: AttributeValueRepresentable = String
}

extension OnResetAttributeModifier where Self: Attributes & Mutable {

    public func onReset(
        _ value: OnResetAttributeValueType?
    ) -> Self {
        setAttribute(key: .onreset, value: value?.attributeValue)
    }
}
