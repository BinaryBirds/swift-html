import SGML

public protocol OnSelectStartAttributeModifier {
    associatedtype
        OnSelectStartAttributeValueType: AttributeValueRepresentable = String
}

extension OnSelectStartAttributeModifier where Self: Attributes & Mutable {

    public func onSelectStart(
        _ value: OnSelectStartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.selectStart,
            value: value?.attributeValue
        )
    }
}
