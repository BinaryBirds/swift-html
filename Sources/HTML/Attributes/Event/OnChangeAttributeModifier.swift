import SGML

public protocol OnChangeAttributeModifier {
    associatedtype OnChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnChangeAttributeModifier where Self: Attributes & Mutable {

    public func onChange(
        _ value: OnChangeAttributeValueType?
    ) -> Self {
        setAttribute(key: .onchange, value: value?.attributeValue)
    }
}
