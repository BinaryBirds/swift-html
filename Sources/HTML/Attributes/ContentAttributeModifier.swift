import SGML

public protocol ContentAttributeModifier {
    associatedtype ContentAttributeValueType: AttributeValueRepresentable = String
}

extension ContentAttributeModifier where Self: Attributes & Mutable {

    public func content(
        _ value: ContentAttributeValueType?
    ) -> Self {
        setAttribute(key: .content, value: value?.attributeValue)
    }
}
