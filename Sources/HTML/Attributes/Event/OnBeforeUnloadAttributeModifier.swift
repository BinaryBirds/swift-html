import SGML

public protocol OnBeforeUnloadAttributeModifier {
    associatedtype
        OnBeforeUnloadAttributeValueType: AttributeValueRepresentable = String
}

extension OnBeforeUnloadAttributeModifier where Self: Attributes & Mutable {

    public func onBeforeUnload(
        _ value: OnBeforeUnloadAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.beforeUnload,
            value: value?.attributeValue
        )
    }
}
