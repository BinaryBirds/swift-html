import SGML

public struct PlaceholderAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol PlaceholderAttributeModifier {

}

extension PlaceholderAttributeModifier where Self: Attributes & Mutable {

    public func placeholder(
        _ value: String?
    ) -> Self {
        setAttribute(PlaceholderAttribute(value))
    }
}
