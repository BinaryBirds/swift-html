public struct FormAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol FormAttributeModifier {

}

extension FormAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Form attribute.
    public func form(
        _ value: String?
    ) -> Self {
        setAttribute(FormAttribute(value))
    }
}
