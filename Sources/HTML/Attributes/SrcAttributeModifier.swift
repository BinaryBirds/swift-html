import SGML

public protocol SrcAttributeModifier {
    associatedtype SrcAttributeValue: AttributeValueRepresentable = String
}

extension SrcAttributeModifier where Self: Attributes & Mutable {

    public func src(
        _ value: SrcAttributeValue?
    ) -> Self {
        setAttribute(key: .src, value: value?.attributeValue)
    }
}
