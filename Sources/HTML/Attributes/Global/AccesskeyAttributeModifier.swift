import SGML

public protocol AccessKeyAttributeModifier {
    associatedtype AccessKeyAttributeValueType: AttributeValueRepresentable =
        String
}

extension AccessKeyAttributeModifier where Self: Attributes & Mutable {

    public func accessKey(
        _ value: AccessKeyAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.accesskey,
            value: value?.attributeValue
        )
    }
}
