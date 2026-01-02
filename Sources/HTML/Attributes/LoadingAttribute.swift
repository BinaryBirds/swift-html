import SGML

public enum LoadingValue: String, Sendable, AttributeValueRepresentable {
    case eager
    case lazy
}

public protocol LoadingAttributeModifier {
    associatedtype LoadingAttributeValue: AttributeValueRepresentable = LoadingValue
}

extension LoadingAttributeModifier where Self: Attributes & Mutable {

    public func loading(
        _ value: LoadingAttributeValue?
    ) -> Self {
        setAttribute(name: "loading", value: value?.attributeValue)
    }
}
