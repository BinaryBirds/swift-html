import SGML

public protocol OnPageShowAttributeModifier {
    associatedtype OnPageShowAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPageShowAttributeModifier where Self: Attributes & Mutable {

    public func onPageShow(
        _ value: OnPageShowAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pageShow,
            value: value?.attributeValue
        )
    }
}
