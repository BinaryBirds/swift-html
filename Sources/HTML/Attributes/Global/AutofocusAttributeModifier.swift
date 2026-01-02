import SGML

public protocol AutoFocusAttributeModifier {

}

extension AutoFocusAttributeModifier where Self: Attributes & Mutable {

    public func autoFocus() -> Self {
        setAttribute(key: GlobalAttributeKey.autofocus)
    }
}
