import SGML

public protocol MutedAttributeModifier {

}

extension MutedAttributeModifier where Self: Attributes & Mutable {

    public func muted() -> Self {
        setAttribute(key: StandardAttributeKey.muted)
    }
}
