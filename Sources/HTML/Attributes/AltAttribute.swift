import SGML

public struct AltAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol AltAttributeModifier {

}

extension AltAttributeModifier where Self: Attributes & Mutable {

    public func alt(
        _ value: String?
    ) -> Self {
        setAttribute(AltAttribute(value))
    }
}
