public struct LoadingAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case eager
        case lazy
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol LoadingAttributeModifier {

}

extension LoadingAttributeModifier where Self: Attributes & Mutable {

    public func loading(
        _ value: LoadingAttribute.Value?
    ) -> Self {
        setAttribute(LoadingAttribute(value))
    }
}
