import SGML

public enum MethodValue: String, Sendable, AttributeValueRepresentable {
    case get
    case post
}

public protocol MethodAttributeModifier {
    associatedtype MethodAttributeValue: AttributeValueRepresentable = MethodValue
}

extension MethodAttributeModifier where Self: Attributes & Mutable {

    public func method(
        _ value: MethodAttributeValue?
    ) -> Self {
        setAttribute(key: .method, value: value?.attributeValue)
    }
}
