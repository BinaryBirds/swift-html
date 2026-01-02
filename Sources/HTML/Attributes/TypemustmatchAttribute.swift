import SGML

public struct TypemustmatchAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol TypemustmatchAttributeModifier {

}

extension TypemustmatchAttributeModifier where Self: Attributes & Mutable {

    public func typemustmatch() -> Self {
        setAttribute(TypemustmatchAttribute())
    }
}
