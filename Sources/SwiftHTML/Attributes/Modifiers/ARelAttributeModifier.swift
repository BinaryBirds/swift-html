public protocol ARelAttributeModifier {

}

extension ARelAttributeModifier where Self: Attributes & Mutable {

    /// Set a custom name for the given meta tag.
    public func rel(
        _ value: ARelAttribute.Value
    ) -> Self {
        setAttribute(ARelAttribute(value))
    }
}
