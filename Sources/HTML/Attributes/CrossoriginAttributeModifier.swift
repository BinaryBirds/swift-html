import SGML

public enum CrossoriginAttributeValue: String, Sendable, AttributeValueRepresentable {
    case anonymous
    case useCredentials = "use-credentials"
}

public protocol CrossoriginAttributeModifier {
    associatedtype CrossoriginAttributeValueType: AttributeValueRepresentable = CrossoriginAttributeValue
}

extension CrossoriginAttributeModifier where Self: Attributes & Mutable {

    public func crossorigin(
        _ value: CrossoriginAttributeValueType?
    ) -> Self {
        setAttribute(key: .crossorigin, value: value?.attributeValue)
    }
}
