import SGML

public protocol OnEndedAttributeModifier {
    associatedtype OnEndedAttributeValueType: AttributeValueRepresentable = String
}

extension OnEndedAttributeModifier where Self: Attributes & Mutable {

    public func onEnded(
        _ value: OnEndedAttributeValueType?
    ) -> Self {
        setAttribute(key: .onended, value: value?.attributeValue)
    }
}
