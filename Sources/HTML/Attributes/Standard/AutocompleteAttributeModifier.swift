import SGML

public protocol AutoCompleteAttributeModifier {

}

extension AutoCompleteAttributeModifier where Self: Attributes & Mutable {

    public func autoComplete() -> Self {
        setAttribute(key: StandardAttributeKey.autocomplete)
    }
}
