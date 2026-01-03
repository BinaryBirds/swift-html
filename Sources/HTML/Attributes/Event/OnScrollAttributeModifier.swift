import SGML

public protocol OnScrollAttributeModifier {
    associatedtype OnScrollAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnScrollAttributeModifier where Self: Attributes & Mutable {

    public func onScroll(
        _ value: OnScrollAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.scroll,
            value: value?.attributeValue
        )
    }
}
