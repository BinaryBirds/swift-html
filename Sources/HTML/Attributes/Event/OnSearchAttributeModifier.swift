import SGML

public protocol OnSearchAttributeModifier {
    associatedtype OnSearchAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSearchAttributeModifier where Self: Attributes & Mutable {

    public func onSearch(
        _ value: OnSearchAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.search,
            value: value?.attributeValue
        )
    }
}
