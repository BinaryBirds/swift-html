import SGML

public protocol HeightAttributeModifier {
    associatedtype HeightAttributeValueType: AttributeValueRepresentable = Int
}

extension HeightAttributeModifier where Self: Attributes & Mutable {

    public func height(
        _ value: HeightAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.height,
            value: value?.attributeValue
        )
    }
}
