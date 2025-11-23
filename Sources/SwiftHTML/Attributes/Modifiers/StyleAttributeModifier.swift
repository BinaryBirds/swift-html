public protocol StyleAttributeModifier {

}

extension StyleAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Style attribute.
    public func style(
        _ value: String?
    ) -> Self {
        setAttribute(StyleAttribute(value))
    }
}
