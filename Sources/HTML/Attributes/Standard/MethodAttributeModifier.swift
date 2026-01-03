import SGML

public enum MethodAttributeValue: String, AttributeValueRepresentable {
    case get
    case post
}

public protocol MethodAttributeModifier {
    associatedtype MethodAttributeValueType: AttributeValueRepresentable =
        MethodAttributeValue
}

extension MethodAttributeModifier where Self: Attributes & Mutable {

    public func method(
        _ value: MethodAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.method,
            value: value?.attributeValue
        )
    }
}
