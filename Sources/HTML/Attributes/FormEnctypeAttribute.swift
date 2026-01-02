import SGML

public struct FormEnctypeAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: EnctypeAttribute.Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol FormEnctypeAttributeModifier {

}

extension FormEnctypeAttributeModifier where Self: Attributes & Mutable {

    public func formEnctype(
        _ value: EnctypeAttribute.Value?
    ) -> Self {
        setAttribute(FormEnctypeAttribute(value))
    }
}
