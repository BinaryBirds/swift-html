import SGML

public protocol HeadingoffsetAttributeModifier {
    associatedtype HeadingoffsetAttributeValueType: AttributeValueRepresentable = Int
}

extension HeadingoffsetAttributeModifier where Self: Attributes & Mutable {

    public func headingoffset(
        _ value: HeadingoffsetAttributeValueType?
    ) -> Self {
        setAttribute(key: .headingoffset, value: value?.attributeValue)
    }
}
