public struct PreloadAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case auto
        case metadata
        case none
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol PreloadAttributeModifier {

}

extension PreloadAttributeModifier where Self: Attributes & Mutable {

    public func preload(
        _ value: PreloadAttribute.Value?
    ) -> Self {
        setAttribute(PreloadAttribute(value))
    }
}
