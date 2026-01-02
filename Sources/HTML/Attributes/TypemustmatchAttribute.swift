import SGML

public protocol TypemustmatchAttributeModifier {

}

extension TypemustmatchAttributeModifier where Self: Attributes & Mutable {

    public func typemustmatch() -> Self {
        setAttribute(name: "typemustmatch", value: nil)
    }
}
