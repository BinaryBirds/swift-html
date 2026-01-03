import SGML

public protocol CommandForAttributeModifier {
    associatedtype CommandForAttributeValueType: AttributeValueRepresentable =
        String
}

extension CommandForAttributeModifier where Self: Attributes & Mutable {

    public func commandFor(
        _ value: CommandForAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.commandfor,
            value: value?.attributeValue
        )
    }
}
