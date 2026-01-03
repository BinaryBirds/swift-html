import SGML

public protocol OnDblClickAttributeModifier {
    associatedtype OnDblClickAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDblClickAttributeModifier where Self: Attributes & Mutable {

    public func onDblClick(
        _ value: OnDblClickAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dblClick,
            value: value?.attributeValue
        )
    }
}
