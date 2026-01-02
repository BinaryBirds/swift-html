import SGML

public struct ClassAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol ClassAttributeModifier {

}

extension ClassAttributeModifier where Self: Attributes & Mutable {

    /// Sets a class attribute.
    public func setClass(
        _ value: String?
    ) -> Self {
        setAttribute(ClassAttribute(value))
    }

    /// Adds a class attribute.
    public func addClass(
        _ value: String?
    ) -> Self {
        addAttribute(ClassAttribute(value))
    }

    /// Removes a class attribute.
    public func removeClass(
        _ value: String?
    ) -> Self {
        removeAttribute(ClassAttribute(value))
    }

    /// Toggles a class attribute.
    public func toggleClass(
        _ value: String?
    ) -> Self {
        if hasAttribute(ClassAttribute(value)) {
            removeAttribute(ClassAttribute(value))
        }
        else {
            addAttribute(ClassAttribute(value))
        }
    }

    // MARK: -

    /// Add class attribute values.
    public func `class`(
        _ values: [String]
    ) -> Self {
        var mutatingSelf = self
        for item in values {
            mutatingSelf = mutatingSelf.addClass(item)
        }
        return mutatingSelf
    }

    /// Add class attribute values.
    public func `class`(
        _ values: String...
    ) -> Self {
        `class`(values)
    }
}
