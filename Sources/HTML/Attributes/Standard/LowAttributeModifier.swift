import SGML

public protocol LowAttributeModifier {
    associatedtype LowAttributeValueType: AttributeValueRepresentable = Double
}

extension LowAttributeModifier where Self: Attributes & Mutable {

    public func low(

        _ value: LowAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.low,
            value: value?.attributeValue
        )
    }
}
