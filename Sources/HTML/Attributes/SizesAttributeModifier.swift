import SGML

public protocol SizesAttributeModifier {
    associatedtype SizesAttributeValue: AttributeValueRepresentable = String
}

extension SizesAttributeModifier where Self: Attributes & Mutable {

    public func sizes(
        _ value: SizesAttributeValue?
    ) -> Self {
        setAttribute(key: .sizes, value: value?.attributeValue)
    }
}
