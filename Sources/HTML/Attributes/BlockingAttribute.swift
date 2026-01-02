import SGML

public enum BlockingValue: String, Sendable, AttributeValueRepresentable {
    case render
}

public protocol BlockingAttributeModifier {
    associatedtype BlockingAttributeValue: AttributeValueRepresentable = BlockingValue
}

extension BlockingAttributeModifier where Self: Attributes & Mutable {

    public func blocking(
        _ value: BlockingAttributeValue?
    ) -> Self {
        setAttribute(name: "blocking", value: value?.attributeValue)
    }
}
