import SGML

public protocol AriaDescribedByAttributeModifier {
    associatedtype
        AriaDescribedByAttributeValueType: AttributeValueRepresentable = String
}

extension AriaDescribedByAttributeModifier where Self: Attributes & Mutable {

    public func ariaDescribedBy(
        _ value: AriaDescribedByAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.describedBy,
            value: value?.attributeValue
        )
    }
}
