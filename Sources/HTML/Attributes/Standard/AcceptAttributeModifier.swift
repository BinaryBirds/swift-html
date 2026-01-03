import SGML

public protocol AcceptAttributeModifier {
    associatedtype AcceptAttributeValueType: AttributeValueRepresentable =
        String
}

extension AcceptAttributeModifier where Self: Attributes & Mutable {

    public func accept(

        _ value: AcceptAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.accept,
            value: value?.attributeValue
        )
    }
}
