public protocol RelAttributeModifier {

}

extension RelAttributeModifier where Self: Attributes & Mutable {

    /// Set a custom name for the given meta tag.
    public func rel(
        _ value: RelAttribute.Value
    ) -> Self {
        setAttribute(RelAttribute(value))
    }
}
