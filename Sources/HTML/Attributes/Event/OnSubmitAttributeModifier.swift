import SGML

public protocol OnSubmitAttributeModifier {
    associatedtype OnSubmitAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSubmitAttributeModifier where Self: Attributes & Mutable {

    public func onSubmit(
        _ value: OnSubmitAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.submit,
            value: value?.attributeValue
        )
    }
}
