import SGML

public protocol FormMethodAttributeModifier {
    associatedtype FormMethodAttributeValue: AttributeValueRepresentable = MethodValue
}

extension FormMethodAttributeModifier where Self: Attributes & Mutable {

    public func formMethod(
        _ value: FormMethodAttributeValue?
    ) -> Self {
        setAttribute(key: .formmethod, value: value?.attributeValue)
    }
}
