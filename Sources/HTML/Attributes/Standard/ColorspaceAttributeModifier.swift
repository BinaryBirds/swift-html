import SGML

public protocol ColorspaceAttributeModifier {
    associatedtype ColorspaceAttributeValueType: AttributeValueRepresentable =
        String
}

extension ColorspaceAttributeModifier where Self: Attributes & Mutable {

    public func colorspace(
        _ value: ColorspaceAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.colorspace,
            value: value?.attributeValue
        )
    }
}
