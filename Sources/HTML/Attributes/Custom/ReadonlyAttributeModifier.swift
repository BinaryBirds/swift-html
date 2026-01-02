import SGML

public protocol ReadonlyAttributeModifier {

}

extension ReadonlyAttributeModifier where Self: Attributes & Mutable {

    public func readonly() -> Self {
        setAttribute(key: .readonly)
    }
}
