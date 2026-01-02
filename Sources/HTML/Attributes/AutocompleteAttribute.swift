import SGML

public struct AutocompleteAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol AutocompleteAttributeModifier {

}

extension AutocompleteAttributeModifier where Self: Attributes & Mutable {

    public func autocomplete() -> Self {
        setAttribute(AutocompleteAttribute())
    }
}
