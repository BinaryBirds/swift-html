import SGML

public enum CrossOriginAttributeValue: String, Sendable,
    AttributeValueRepresentable
{
    case anonymous
    case useCredentials = "use-credentials"
}

public protocol CrossOriginAttributeModifier {
    associatedtype CrossOriginAttributeValueType: AttributeValueRepresentable =
        CrossOriginAttributeValue
}

extension CrossOriginAttributeModifier where Self: Attributes & Mutable {

    public func crossOrigin(
        _ value: CrossOriginAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.crossorigin,
            value: value?.attributeValue
        )
    }
}
