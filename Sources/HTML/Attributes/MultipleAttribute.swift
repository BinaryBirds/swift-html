import SGML

public protocol MultipleAttributeModifier {

}

extension MultipleAttributeModifier where Self: Attributes & Mutable {

    public func multiple() -> Self {
        setAttribute(name: "multiple", value: nil)
    }
}
