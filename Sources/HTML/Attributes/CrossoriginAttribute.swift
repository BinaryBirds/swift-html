import SGML

public enum CrossoriginValue: String, Sendable, AttributeValueRepresentable {
    case anonymous
    case useCredentials = "use-credentials"
}

public protocol CrossoriginAttributeModifier {
    associatedtype CrossoriginAttributeValue: AttributeValueRepresentable = CrossoriginValue
}

extension CrossoriginAttributeModifier where Self: Attributes & Mutable {

    public func crossorigin(
        _ value: CrossoriginAttributeValue?
    ) -> Self {
        setAttribute(name: "crossorigin", value: value?.attributeValue)
    }
}
