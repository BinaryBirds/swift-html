import SGML

public protocol AriaLabeledByAttributeModifier {
    associatedtype
        AriaLabeledByAttributeValueType: AttributeValueRepresentable = String
}

extension AriaLabeledByAttributeModifier where Self: Attributes & Mutable {

    public func ariaLabeledBy(
        _ value: AriaLabeledByAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.labeledBy,
            value: value?.attributeValue
        )
    }
}
