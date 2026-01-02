import SGML

public protocol DisabledAttributeModifier {

}

extension DisabledAttributeModifier where Self: Attributes & Mutable {

    public func disabled() -> Self {
        setAttribute(key: StandardAttributeKey.disabled)
    }
}
