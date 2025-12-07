public struct CheckedAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol CheckedAttributeModifier {

}

extension CheckedAttributeModifier where Self: Attributes & Mutable {

    public func checked() -> Self {
        setAttribute(CheckedAttribute())
    }
}
