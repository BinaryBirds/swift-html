public struct FormActionAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol FormActionAttributeModifier {

}

extension FormActionAttributeModifier where Self: Attributes & Mutable {

    public func formAction(
        _ value: String?
    ) -> Self {
        setAttribute(FormActionAttribute(value))
    }
}
