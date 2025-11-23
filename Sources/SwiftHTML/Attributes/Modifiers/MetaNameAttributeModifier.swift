public protocol MetaNameAttributeModifier {

}

extension MetaNameAttributeModifier where Self: Attributes & Mutable {

    /// Set a custom name for the given meta tag.
    public func name(
        _ value: MetaNameAttribute.Value
    ) -> Self {
        setAttribute(MetaNameAttribute(value))
    }
}
