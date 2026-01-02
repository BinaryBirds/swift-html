import SGML

public struct ClosedbyAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case any
        case closeRequest
        case none
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol ClosedbyAttributeModifier {

}

extension ClosedbyAttributeModifier where Self: Attributes & Mutable {

    public func closedby(
        _ value: ClosedbyAttribute.Value?
    ) -> Self {
        setAttribute(ClosedbyAttribute(value))
    }
}
