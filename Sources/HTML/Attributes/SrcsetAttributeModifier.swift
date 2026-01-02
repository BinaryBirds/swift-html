import SGML

public protocol SrcsetAttributeModifier {
    associatedtype SrcsetAttributeValueType: AttributeValueRepresentable = String
}

extension SrcsetAttributeModifier where Self: Attributes & Mutable {

    public func srcset(
        _ value: SrcsetAttributeValueType?
    ) -> Self {
        setAttribute(key: .srcset, value: value?.attributeValue)
    }
}
