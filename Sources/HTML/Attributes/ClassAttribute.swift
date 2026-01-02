import SGML

public protocol ClassAttributeModifier {
    associatedtype ClassAttributeValue: AttributeValueRepresentable = String
}

extension ClassAttributeModifier where Self: Attributes & Mutable {

    /// Sets a class attribute.
    public func setClass(
        _ value: ClassAttributeValue?
    ) -> Self {
        setAttribute(name: "class", value: value?.attributeValue)
    }

    /// Adds a class attribute.
    public func addClass(
        _ value: ClassAttributeValue?
    ) -> Self {
        addAttribute(name: "class", value: value?.attributeValue)
    }

    /// Removes a class attribute.
    public func removeClass(
        _ value: ClassAttributeValue?
    ) -> Self {
        removeAttribute(name: "class", value: value?.attributeValue)
    }

    /// Toggles a class attribute.
    public func toggleClass(
        _ value: ClassAttributeValue?
    ) -> Self {
        if hasAttribute(name: "class", value: value?.attributeValue) {
            removeAttribute(name: "class", value: value?.attributeValue)
        }
        else {
            addAttribute(name: "class", value: value?.attributeValue)
        }
    }

    // MARK: -

    /// Add class attribute values.
    public func `class`(
        _ values: [ClassAttributeValue]
    ) -> Self {
        var mutatingSelf = self
        for item in values {
            mutatingSelf = mutatingSelf.addClass(item)
        }
        return mutatingSelf
    }

    /// Add class attribute values.
    public func `class`(
        _ values: ClassAttributeValue...
    ) -> Self {
        `class`(values)
    }
}
