public struct ReadonlyAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol ReadonlyAttributeModifier {

}

extension ReadonlyAttributeModifier where Self: Attributes & Mutable {

    public func readonly() -> Self {
        setAttribute(ReadonlyAttribute())
    }
}
