import SGML

public protocol ColorAttributeModifier {
    associatedtype ColorAttributeValueType: AttributeValueRepresentable = String
}

extension ColorAttributeModifier where Self: Attributes & Mutable {

    public func color(
        _ value: ColorAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.color,
            value: value?.attributeValue
        )
    }
}
