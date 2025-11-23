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

    /// Specifies on what device the linked document will be displayed.
    public func `class`(
        _ value: String?
    ) -> Self {
        setAttribute(ClassAttribute(value))
    }
}
