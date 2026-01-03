import SGML

public protocol CommandAttributeModifier {
    associatedtype CommandAttributeValueType: AttributeValueRepresentable =
        String
}

extension CommandAttributeModifier where Self: Attributes & Mutable {

    public func command(
        _ value: CommandAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.command,
            value: value?.attributeValue
        )
    }
}
