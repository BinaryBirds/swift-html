public struct CiteAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol CiteAttributeModifier {

}

extension CiteAttributeModifier where Self: Attributes & Mutable {

    /// Sets a cite attribute.
    public func cite(
        _ value: String?
    ) -> Self {
        setAttribute(CiteAttribute(value))
    }
}
