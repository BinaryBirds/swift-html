import SGML

public protocol InertAttributeModifier {
}

extension InertAttributeModifier where Self: Attributes & Mutable {

    public func inert() -> Self {
        setAttribute(key: GlobalAttributeKey.inert)
    }
}
