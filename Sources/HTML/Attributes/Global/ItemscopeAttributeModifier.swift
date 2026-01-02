import SGML

public protocol ItemscopeAttributeModifier {
}

extension ItemscopeAttributeModifier where Self: Attributes & Mutable {

    public func itemscope() -> Self {
        setAttribute(key: .itemscope)
    }
}
