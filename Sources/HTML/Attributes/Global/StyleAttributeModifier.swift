import SGML

public protocol StyleAttributeModifier {
    associatedtype StyleAttributeValueType: AttributeValueRepresentable = String
}

extension StyleAttributeModifier where Self: Attributes & Mutable {

    /// Sets an style attribute.
    public func style(
        _ value: StyleAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.style,
            value: value?.attributeValue
        )
    }
}
