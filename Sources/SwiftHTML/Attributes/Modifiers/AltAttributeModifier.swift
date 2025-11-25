public protocol AltAttributeModifier {

}

extension AltAttributeModifier where Self: Attributes & Mutable {

    public func alt(
        _ value: String?
    ) -> Self {
        setAttribute(AltAttribute(value))
    }
}
