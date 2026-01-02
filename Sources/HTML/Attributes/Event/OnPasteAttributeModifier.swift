import SGML

public protocol OnPasteAttributeModifier {
    associatedtype OnPasteAttributeValueType: AttributeValueRepresentable = String
}

extension OnPasteAttributeModifier where Self: Attributes & Mutable {

    public func onPaste(
        _ value: OnPasteAttributeValueType?
    ) -> Self {
        setAttribute(key: .onpaste, value: value?.attributeValue)
    }
}
