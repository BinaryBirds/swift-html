import SGML

public protocol AutocompleteAttributeModifier {

}

extension AutocompleteAttributeModifier where Self: Attributes & Mutable {

    public func autocomplete() -> Self {
        setAttribute(name: "autocomplete", value: nil)
    }
}
