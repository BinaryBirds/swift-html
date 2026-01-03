import SGML

public protocol OnHashChangeAttributeModifier {
    associatedtype OnHashChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnHashChangeAttributeModifier where Self: Attributes & Mutable {

    public func onHashChange(
        _ value: OnHashChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.hashChange,
            value: value?.attributeValue
        )
    }
}
