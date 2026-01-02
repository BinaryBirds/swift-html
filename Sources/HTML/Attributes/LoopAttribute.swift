import SGML

public protocol LoopAttributeModifier {

}

extension LoopAttributeModifier where Self: Attributes & Mutable {

    public func loop() -> Self {
        setAttribute(name: "loop", value: nil)
    }
}
