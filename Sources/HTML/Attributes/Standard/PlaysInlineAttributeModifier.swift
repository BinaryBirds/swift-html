import SGML

public protocol PlaysInlineAttributeModifier {
}

extension PlaysInlineAttributeModifier where Self: Attributes & Mutable {

    public func playsInline() -> Self {
        setAttribute(key: StandardAttributeKey.playsinline)
    }
}
