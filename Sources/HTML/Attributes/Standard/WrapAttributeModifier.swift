import SGML

public enum WrapAttributeValue: String, AttributeValueRepresentable {
    /// Text is not to be wrapped when submitted.
    case soft
    /// Text is to have newlines added when submitted.
    case hard
}

public protocol WrapAttributeModifier {
    associatedtype WrapAttributeValueType: AttributeValueRepresentable =
        WrapAttributeValue
}

extension WrapAttributeModifier where Self: Attributes & Mutable {

    public func wrap(

        _ value: WrapAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.wrap,
            value: value?.attributeValue
        )
    }
}
