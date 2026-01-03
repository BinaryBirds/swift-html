import SGML

public protocol MaxAttributeModifier {
    associatedtype MaxAttributeValueType: AttributeValueRepresentable = Double
}

extension MaxAttributeModifier where Self: Attributes & Mutable {

    public func max(

        _ value: MaxAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.max,
            value: value?.attributeValue
        )
    }
}
