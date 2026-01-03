import SGML

public protocol WidthAttributeModifier {
    associatedtype WidthAttributeValueType: AttributeValueRepresentable = Int
}

extension WidthAttributeModifier where Self: Attributes & Mutable {

    public func width(
        _ value: WidthAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.width,
            value: value?.attributeValue
        )
    }

    public func width() -> Int? {
        getAttribute(key: StandardAttributeKey.width)
    }
}
