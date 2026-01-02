import SGML

public protocol HiddenAttributeModifier {
}

extension HiddenAttributeModifier where Self: Attributes & Mutable {

    public func hidden() -> Self {
        setAttribute(key: GlobalAttributeKey.hidden)
    }
}
