import SGML

public struct CrossoriginAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case anonymous
        case useCredentials = "use-credentials"
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol CrossoriginAttributeModifier {

}

extension CrossoriginAttributeModifier where Self: Attributes & Mutable {

    public func crossorigin(
        _ value: CrossoriginAttribute.Value?
    ) -> Self {
        setAttribute(CrossoriginAttribute(value))
    }
}
