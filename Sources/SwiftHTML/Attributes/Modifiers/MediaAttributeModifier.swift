public protocol MediaAttributeModifier {

}

extension MediaAttributeModifier where Self: Attributes & Mutable {

    /// Specifies on what device the linked document will be displayed.
    public func media(
        _ value: String
    ) -> Self {
        setAttribute(MediaAttribute(value))
    }
}
