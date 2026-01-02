import SGML

public protocol ContenteditableAttributeModifier {
    associatedtype ContenteditableAttributeValueType: AttributeValueRepresentable = String
}

extension ContenteditableAttributeModifier where Self: Attributes & Mutable {

    public func contenteditable(
        _ value: ContenteditableAttributeValueType?
    ) -> Self {
        setAttribute(key: .contenteditable, value: value?.attributeValue)
    }
}
