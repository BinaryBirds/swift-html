public struct IdAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol IdAttributeModifier {

}

extension IdAttributeModifier where Self: Attributes & Mutable {

    /// Sets an id attribute.
    public func id(
        _ value: String?
    ) -> Self {
        setAttribute(IdAttribute(value))
    }
}
