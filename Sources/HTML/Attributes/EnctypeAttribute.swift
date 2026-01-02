import SGML

public struct EnctypeAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case urlencoded = "application/x-www-form-urlencoded"
        case multipart = "multipart/form-data"
        case plain = "text/plain"
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol EnctypeAttributeModifier {

}

extension EnctypeAttributeModifier where Self: Attributes & Mutable {

    public func enctype(
        _ value: EnctypeAttribute.Value?
    ) -> Self {
        setAttribute(EnctypeAttribute(value))
    }
}
