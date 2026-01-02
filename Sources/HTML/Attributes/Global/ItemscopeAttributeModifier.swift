import SGML

public protocol ItemScopeAttributeModifier {
}

extension ItemScopeAttributeModifier where Self: Attributes & Mutable {

    public func itemScope() -> Self {
        setAttribute(key: GlobalAttributeKey.itemscope)
    }
}
