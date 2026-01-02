import SGML

public struct FormMethodAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: MethodAttribute.Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol FormMethodAttributeModifier {

}

extension FormMethodAttributeModifier where Self: Attributes & Mutable {

    public func formMethod(
        _ value: MethodAttribute.Value?
    ) -> Self {
        setAttribute(FormMethodAttribute(value))
    }
}
