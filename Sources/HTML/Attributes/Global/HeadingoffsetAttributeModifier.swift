import SGML

public protocol HeadingOffsetAttributeModifier {
    associatedtype
        HeadingOffsetAttributeValueType: AttributeValueRepresentable = Int
}

extension HeadingOffsetAttributeModifier where Self: Attributes & Mutable {

    public func headingOffset(
        _ value: HeadingOffsetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.headingoffset,
            value: value?.attributeValue
        )
    }
}
