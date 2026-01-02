import SGML

public struct ActionAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol ActionAttributeModifier {

}

extension ActionAttributeModifier where Self: Attributes & Mutable {

    public func action(
        _ value: String?
    ) -> Self {
        setAttribute(ActionAttribute(value))
    }
}
