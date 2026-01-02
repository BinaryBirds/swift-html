import SGML

public struct MethodAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case get
        case post
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol MethodAttributeModifier {

}

extension MethodAttributeModifier where Self: Attributes & Mutable {

    public func method(
        _ value: MethodAttribute.Value?
    ) -> Self {
        setAttribute(MethodAttribute(value))
    }
}
