public struct SizesAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol SizesAttributeModifier {

}

extension SizesAttributeModifier where Self: Attributes & Mutable {

    public func sizes(
        _ value: String?
    ) -> Self {
        setAttribute(SizesAttribute(value))
    }
}
