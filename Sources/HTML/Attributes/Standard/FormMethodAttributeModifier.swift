import SGML

public protocol FormMethodAttributeModifier {
    associatedtype FormMethodAttributeValueType: AttributeValueRepresentable =
        MethodAttributeValue
}

extension FormMethodAttributeModifier where Self: Attributes & Mutable {

    public func formMethod(
        _ value: FormMethodAttributeValueType?
    ) -> Self {
        setAttribute(key: .formmethod, value: value?.attributeValue)
    }
}
