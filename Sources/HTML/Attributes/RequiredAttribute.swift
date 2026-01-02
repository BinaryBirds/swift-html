import SGML

public protocol RequiredAttributeModifier {

}

extension RequiredAttributeModifier where Self: Attributes & Mutable {

    public func required() -> Self {
        setAttribute(name: "required", value: nil)
    }
}
