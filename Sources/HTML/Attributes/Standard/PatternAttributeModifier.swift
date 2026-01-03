import SGML

public protocol PatternAttributeModifier {
    associatedtype PatternAttributeValueType: AttributeValueRepresentable =
        String
}

extension PatternAttributeModifier where Self: Attributes & Mutable {

    public func pattern(

        _ value: PatternAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.pattern,
            value: value?.attributeValue
        )
    }
}
