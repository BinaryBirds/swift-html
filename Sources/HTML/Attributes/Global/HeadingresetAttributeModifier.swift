import SGML

public protocol HeadingresetAttributeModifier {
    associatedtype HeadingresetAttributeValueType: AttributeValueRepresentable = Int
}

extension HeadingresetAttributeModifier where Self: Attributes & Mutable {

    public func headingreset(
        _ value: HeadingresetAttributeValueType?
    ) -> Self {
        setAttribute(key: .headingreset, value: value?.attributeValue)
    }
}
