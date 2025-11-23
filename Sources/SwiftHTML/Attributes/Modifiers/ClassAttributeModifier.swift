public protocol ClassAttributeModifier {

}

extension ClassAttributeModifier where Self: Attributes & Mutable {

    /// Sets a class attribute.
    public func setClass(
        _ value: String?
    ) -> Self {
        setAttribute(ClassAttribute(value))
    }

    /// Adds a class attribute.
    public func addClass(
        _ value: String?
    ) -> Self {
        addAttributeValue(ClassAttribute(value))
    }

    /// Removes a class attribute.
    public func removeClass(
        _ value: String?
    ) -> Self {
        removeAttributeValueBy(ClassAttribute(value))
    }
}
