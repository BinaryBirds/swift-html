import SGML

public protocol SizeAttributeModifier {
    associatedtype SizeAttributeValue: AttributeValueRepresentable = Int
}

extension SizeAttributeModifier where Self: Attributes & Mutable {

    public func size(
        _ value: SizeAttributeValue?
    ) -> Self {
        setAttribute(name: "size", value: value?.attributeValue)
    }
}
