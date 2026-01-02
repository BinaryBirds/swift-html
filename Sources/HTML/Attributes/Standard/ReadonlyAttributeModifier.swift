import SGML

public protocol ReadOnlyAttributeModifier {

}

extension ReadOnlyAttributeModifier where Self: Attributes & Mutable {

    public func readOnly() -> Self {
        setAttribute(key: StandardAttributeKey.readonly)
    }
}
