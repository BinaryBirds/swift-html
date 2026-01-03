import SGML

public protocol HeadingResetAttributeModifier {
    associatedtype HeadingResetAttributeValueType: AttributeValueRepresentable =
        Int
}

extension HeadingResetAttributeModifier where Self: Attributes & Mutable {

    public func headingReset(
        _ value: HeadingResetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.headingreset,
            value: value?.attributeValue
        )
    }
}
