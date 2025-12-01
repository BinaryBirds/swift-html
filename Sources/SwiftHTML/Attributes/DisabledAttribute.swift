public struct DisabledAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol DisabledAttributeModifier {

}

extension DisabledAttributeModifier where Self: Attributes & Mutable {

    public func disabled() -> Self {
        setAttribute(DisabledAttribute())
    }
}
