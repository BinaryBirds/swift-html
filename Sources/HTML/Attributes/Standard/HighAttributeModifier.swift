import SGML

public protocol HighAttributeModifier {
    associatedtype HighAttributeValueType: AttributeValueRepresentable = Double
}

extension HighAttributeModifier where Self: Attributes & Mutable {

    public func high(
        _ value: HighAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.high,
            value: value?.attributeValue
        )
    }
}
