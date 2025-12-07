public struct HreflangAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol HreflangAttributeModifier {

}

extension HreflangAttributeModifier where Self: Attributes & Mutable {

    public func hreflang(
        _ value: String?
    ) -> Self {
        setAttribute(HrefAttribute(value))
    }
}
