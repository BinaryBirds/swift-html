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
    public func `class`(
        _ value: String?
    ) -> Self {
        setClass(value)
    }

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
        removeAttribute(ClassAttribute(value))
    }
}
