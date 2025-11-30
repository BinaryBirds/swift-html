public struct ValueAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol ValueAttributeModifier {

}

extension ValueAttributeModifier where Self: Attributes & Mutable {

    public func value(
        _ value: String?
    ) -> Self {
        setAttribute(ValueAttribute(value))
    }
}
