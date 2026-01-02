import SGML

public protocol SpellcheckAttributeModifier {

}

extension SpellcheckAttributeModifier where Self: Attributes & Mutable {

    public func spellcheck(
        _ value: Bool
    ) -> Self {
        setAttribute(key: .spellcheck, value: String(value))
    }
}
