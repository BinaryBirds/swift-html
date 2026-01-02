import SGML

public struct HrefAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol HrefAttributeModifier {

}

extension HrefAttributeModifier where Self: Attributes & Mutable {

    /// Sets a href attribute.
    public func href(
        _ value: String?
    ) -> Self {
        setAttribute(HrefAttribute(value))
    }
}
