import SGML

public protocol SpanAttributeModifier {
    associatedtype SpanAttributeValueType: AttributeValueRepresentable = Int
}

extension SpanAttributeModifier where Self: Attributes & Mutable {

    public func span(
        _ value: SpanAttributeValueType?
    ) -> Self {
        setAttribute(key: .span, value: value?.attributeValue)
    }
}
