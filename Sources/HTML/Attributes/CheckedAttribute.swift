import SGML

public protocol CheckedAttributeModifier {

}

extension CheckedAttributeModifier where Self: Attributes & Mutable {

    public func checked() -> Self {
        setAttribute(name: "checked", value: nil)
    }
}
