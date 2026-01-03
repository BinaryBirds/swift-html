import SGML

public protocol OnPageHideAttributeModifier {
    associatedtype OnPageHideAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPageHideAttributeModifier where Self: Attributes & Mutable {

    public func onPageHide(
        _ value: OnPageHideAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pageHide,
            value: value?.attributeValue
        )
    }
}
