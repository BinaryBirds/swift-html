public struct ForAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol ForAttributeModifier {

}

extension ForAttributeModifier where Self: Attributes & Mutable {

    public func `for`(
        _ value: String?
    ) -> Self {
        setAttribute(ForAttribute(value))
    }
}
