public struct StyleAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol StyleAttributeModifier {

}

extension StyleAttributeModifier where Self: Attributes & Mutable {

    /// Sets an style attribute.
    public func style(
        _ value: String?
    ) -> Self {
        setAttribute(StyleAttribute(value))
    }
}
