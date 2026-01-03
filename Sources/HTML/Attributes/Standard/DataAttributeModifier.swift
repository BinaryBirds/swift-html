import SGML

public protocol DataAttributeModifier {
    associatedtype DataAttributeValueType: AttributeValueRepresentable = String
}

extension DataAttributeModifier where Self: Attributes & Mutable {

    public func data(
        _ value: DataAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.data,
            value: value?.attributeValue
        )
    }
}
