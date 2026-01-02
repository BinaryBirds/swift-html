import SGML

public protocol SpellCheckAttributeModifier {

}

extension SpellCheckAttributeModifier where Self: Attributes & Mutable {

    public func spellCheck(
        _ value: Bool
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.spellcheck, value: String(value))
    }
}
