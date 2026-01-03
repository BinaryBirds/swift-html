import SGML

public protocol LabelAttributeModifier {
    associatedtype LabelAttributeValueType: AttributeValueRepresentable = String
}

extension LabelAttributeModifier where Self: Attributes & Mutable {

    public func label(
        _ value: LabelAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.label,
            value: value?.attributeValue
        )
    }
}
