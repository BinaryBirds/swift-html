import SGML

public protocol ContentEditableAttributeModifier {
    associatedtype
        ContentEditableAttributeValueType: AttributeValueRepresentable = String
}

extension ContentEditableAttributeModifier where Self: Attributes & Mutable {

    public func contentEditable(
        _ value: ContentEditableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.contenteditable,
            value: value?.attributeValue
        )
    }
}
