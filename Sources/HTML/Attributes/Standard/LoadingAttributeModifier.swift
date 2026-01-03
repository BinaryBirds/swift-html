import SGML

public enum LoadingAttributeValue: String, AttributeValueRepresentable {
    case eager
    case lazy
}

public protocol LoadingAttributeModifier {
    associatedtype LoadingAttributeValueType: AttributeValueRepresentable =
        LoadingAttributeValue
}

extension LoadingAttributeModifier where Self: Attributes & Mutable {

    public func loading(
        _ value: LoadingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.loading,
            value: value?.attributeValue
        )
    }
}
