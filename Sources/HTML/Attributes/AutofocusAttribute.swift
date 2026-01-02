import SGML

public protocol AutofocusAttributeModifier {

}

extension AutofocusAttributeModifier where Self: Attributes & Mutable {

    public func autofocus() -> Self {
        setAttribute(name: "autofocus", value: nil)
    }
}
