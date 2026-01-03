import SGML

public protocol UseMapAttributeModifier {
    associatedtype UseMapAttributeValueType: AttributeValueRepresentable =
        String
}

extension UseMapAttributeModifier where Self: Attributes & Mutable {

    public func useMap(
        _ value: UseMapAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.usemap,
            value: value?.attributeValue
        )
    }
}
