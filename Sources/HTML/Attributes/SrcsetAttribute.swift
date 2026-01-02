import SGML

public protocol SrcsetAttributeModifier {
    associatedtype SrcsetAttributeValue: AttributeValueRepresentable = String
}

extension SrcsetAttributeModifier where Self: Attributes & Mutable {

    public func srcset(
        _ value: SrcsetAttributeValue?
    ) -> Self {
        setAttribute(name: "srcset", value: value?.attributeValue)
    }
}
