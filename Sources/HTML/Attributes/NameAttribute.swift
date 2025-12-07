public struct NameAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol NameAttributeModifier {

}

extension NameAttributeModifier where Self: Attributes & Mutable {

    /// Sets a name attribute.
    public func name(
        _ value: String?
    ) -> Self {
        setAttribute(NameAttribute(value))
    }
}
