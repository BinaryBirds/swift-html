public struct LabelAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol LabelAttributeModifier {

}

extension LabelAttributeModifier where Self: Attributes & Mutable {

    public func label(
        _ value: String?
    ) -> Self {
        setAttribute(LabelAttribute(value))
    }
}
