import SGML

public struct RequiredAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol RequiredAttributeModifier {

}

extension RequiredAttributeModifier where Self: Attributes & Mutable {

    public func required() -> Self {
        setAttribute(RequiredAttribute())
    }
}
