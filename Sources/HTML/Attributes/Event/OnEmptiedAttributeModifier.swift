import SGML

public protocol OnEmptiedAttributeModifier {
    associatedtype OnEmptiedAttributeValueType: AttributeValueRepresentable = String
}

extension OnEmptiedAttributeModifier where Self: Attributes & Mutable {

    public func onEmptied(
        _ value: OnEmptiedAttributeValueType?
    ) -> Self {
        setAttribute(key: .onemptied, value: value?.attributeValue)
    }
}
