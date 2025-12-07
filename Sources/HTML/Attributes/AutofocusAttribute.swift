public struct AutofocusAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol AutofocusAttributeModifier {

}

extension AutofocusAttributeModifier where Self: Attributes & Mutable {

    public func autofocus() -> Self {
        setAttribute(AutofocusAttribute())
    }
}
