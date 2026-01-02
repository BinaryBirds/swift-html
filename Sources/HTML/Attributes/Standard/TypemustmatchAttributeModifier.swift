import SGML

public protocol TypeMustMatchAttributeModifier {

}

extension TypeMustMatchAttributeModifier where Self: Attributes & Mutable {

    public func typeMustMatch() -> Self {
        setAttribute(key: StandardAttributeKey.typemustmatch)
    }
}
