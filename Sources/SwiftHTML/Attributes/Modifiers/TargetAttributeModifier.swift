public protocol TargetAttributeModifier {

}

extension TargetAttributeModifier where Self: Attributes & Mutable {

    /// Sets a href attribute.
    public func target(
        _ value: TargetAttribute.Value
    ) -> Self {
        setAttribute(TargetAttribute(value))
    }
}
