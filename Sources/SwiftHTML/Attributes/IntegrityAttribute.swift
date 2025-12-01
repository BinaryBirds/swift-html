public struct IntegrityAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol IntegrityAttributeModifier {

}

extension IntegrityAttributeModifier where Self: Attributes & Mutable {

    public func integrity(
        _ value: String?
    ) -> Self {
        setAttribute(IntegrityAttribute(value))
    }
}
