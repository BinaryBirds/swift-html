public protocol TitleAttributeModifier {

}

extension TitleAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Style attribute.
    public func style(
        _ value: String?
    ) -> Self {
        setAttribute(StyleAttribute(value))
    }
}
