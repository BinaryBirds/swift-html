import SGML

public protocol PartAttributeModifier {
    associatedtype PartAttributeValueType: AttributeValueRepresentable = String
}

extension PartAttributeModifier where Self: Attributes & Mutable {

    public func part(

        _ value: PartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.part,
            value: value?.attributeValue
        )
    }
}
