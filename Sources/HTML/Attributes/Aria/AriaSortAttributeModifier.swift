import SGML

public protocol AriaSortAttributeModifier {
    associatedtype AriaSortAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaSortAttributeModifier where Self: Attributes & Mutable {

    public func ariaSort(
        _ value: AriaSortAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.sort, value: value?.attributeValue)
    }
}
