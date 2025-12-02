public struct MultipleAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol MultipleAttributeModifier {

}

extension MultipleAttributeModifier where Self: Attributes & Mutable {

    public func multiple() -> Self {
        setAttribute(MultipleAttribute())
    }
}
