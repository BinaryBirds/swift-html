import SGML

public protocol DataAttributeModifier {
    associatedtype DataAttributeValue: AttributeValueRepresentable = String
}

extension DataAttributeModifier where Self: Attributes & Mutable {

    public func data(
        _ value: DataAttributeValue?
    ) -> Self {
        setAttribute(key: .data, value: value?.attributeValue)
    }
}
