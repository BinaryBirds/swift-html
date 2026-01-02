import SGML

public protocol MediaAttributeModifier {
    associatedtype MediaAttributeValue: AttributeValueRepresentable = String
}

extension MediaAttributeModifier where Self: Attributes & Mutable {

    /// Specifies on what device the linked document will be displayed.
    public func media(
        _ value: MediaAttributeValue?
    ) -> Self {
        setAttribute(key: .media, value: value?.attributeValue)
    }
}
