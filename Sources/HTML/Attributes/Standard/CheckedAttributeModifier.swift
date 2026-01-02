import SGML

public protocol CheckedAttributeModifier {

}

extension CheckedAttributeModifier where Self: Attributes & Mutable {

    public func checked() -> Self {
        setAttribute(key: StandardAttributeKey.checked)
    }
}
