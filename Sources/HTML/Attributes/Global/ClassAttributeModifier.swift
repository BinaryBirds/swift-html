import SGML

public protocol ClassAttributeModifier {
    associatedtype ClassAttributeValueType: AttributeValueRepresentable = String
}

extension ClassAttributeModifier where Self: Attributes & Mutable {

    /// Sets a class attribute.
    public func setClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        )
    }

    /// Adds a class attribute.
    public func addClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        addAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        )
    }

    /// Removes a class attribute.
    public func removeClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        removeAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        )
    }

    /// Toggles a class attribute.
    public func toggleClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        if hasAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        ) {
            removeAttribute(
                key: GlobalAttributeKey.`class`,
                value: value?.attributeValue
            )
        }
        else {
            addAttribute(
                key: GlobalAttributeKey.`class`,
                value: value?.attributeValue
            )
        }
    }

    // MARK: -

    /// Add class attribute values.
    public func `class`(
        _ values: [ClassAttributeValueType]
    ) -> Self {
        var mutatingSelf = self
        for item in values {
            mutatingSelf = mutatingSelf.addClass(item)
        }
        return mutatingSelf
    }

    /// Add class attribute values.
    public func `class`(
        _ values: ClassAttributeValueType...
    ) -> Self {
        `class`(values)
    }
}
