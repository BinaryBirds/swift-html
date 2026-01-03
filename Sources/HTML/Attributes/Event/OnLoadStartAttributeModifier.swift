import SGML

public protocol OnLoadStartAttributeModifier {
    associatedtype OnLoadStartAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLoadStartAttributeModifier where Self: Attributes & Mutable {

    public func onLoadStart(
        _ value: OnLoadStartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.loadStart,
            value: value?.attributeValue
        )
    }
}
