public struct BlockingAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case render
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol BlockingAttributeModifier {

}

extension BlockingAttributeModifier where Self: Attributes & Mutable {

    public func blocking(
        _ value: BlockingAttribute.Value? = .render
    ) -> Self {
        setAttribute(BlockingAttribute(value))
    }
}
