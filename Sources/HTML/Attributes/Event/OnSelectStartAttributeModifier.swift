import SGML

public protocol OnSelectStartAttributeModifier {
    associatedtype OnSelectStartAttributeValueType: AttributeValueRepresentable = String
}

extension OnSelectStartAttributeModifier where Self: Attributes & Mutable {

    public func onSelectStart(
        _ value: OnSelectStartAttributeValueType?
    ) -> Self {
        setAttribute(key: .onselectstart, value: value?.attributeValue)
    }
}
