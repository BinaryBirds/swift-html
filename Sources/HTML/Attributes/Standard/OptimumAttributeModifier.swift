import SGML

public protocol OptimumAttributeModifier {
    associatedtype OptimumAttributeValueType: AttributeValueRepresentable =
        String
}

extension OptimumAttributeModifier where Self: Attributes & Mutable {

    public func optimum(

        _ value: OptimumAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.optimum,
            value: value?.attributeValue
        )
    }
}
