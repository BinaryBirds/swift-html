public struct ControlsAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol ControlsAttributeModifier {

}

extension ControlsAttributeModifier where Self: Attributes & Mutable {

    public func controls() -> Self {
        setAttribute(ControlsAttribute())
    }
}
