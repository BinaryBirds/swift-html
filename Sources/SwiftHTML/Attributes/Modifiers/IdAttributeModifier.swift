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
