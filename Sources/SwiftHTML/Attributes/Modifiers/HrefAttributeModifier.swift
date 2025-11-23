public protocol HrefAttributeModifier {

}

extension HrefAttributeModifier where Self: Attributes & Mutable {

    /// Sets a href attribute.
    public func href(
        _ value: String?
    ) -> Self {
        setAttribute(HrefAttribute(value))
    }
}
