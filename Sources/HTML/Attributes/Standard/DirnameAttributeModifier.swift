import SGML

public protocol DirnameAttributeModifier {
    associatedtype DirnameAttributeValueType: AttributeValueRepresentable =
        String
}

extension DirnameAttributeModifier where Self: Attributes & Mutable {

    public func dirname(
        _ value: DirnameAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.dirname,
            value: value?.attributeValue
        )
    }
}
