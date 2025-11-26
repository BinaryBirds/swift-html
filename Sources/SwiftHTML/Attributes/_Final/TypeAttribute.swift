public struct TypeAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol TypeAttributeModifier {

}

extension TypeAttributeModifier where Self: Attributes & Mutable {

    public func type(
        _ value: String?
    ) -> Self {
        setAttribute(TypeAttribute(value))
    }
}
