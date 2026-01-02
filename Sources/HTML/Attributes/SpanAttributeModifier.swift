import SGML

public protocol SpanAttributeModifier {
    associatedtype SpanAttributeValue: AttributeValueRepresentable = Int
}

extension SpanAttributeModifier where Self: Attributes & Mutable {

    public func span(
        _ value: SpanAttributeValue?
    ) -> Self {
        setAttribute(key: .span, value: value?.attributeValue)
    }
}
