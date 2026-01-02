import SGML

public struct LoopAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol LoopAttributeModifier {

}

extension LoopAttributeModifier where Self: Attributes & Mutable {

    public func loop() -> Self {
        setAttribute(LoopAttribute())
    }
}
