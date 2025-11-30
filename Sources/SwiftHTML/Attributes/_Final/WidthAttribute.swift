public struct WidthAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: Int? = nil
    ) {
        self.value = value.map { String($0) }
    }
}

public protocol WidthAttributeModifier {

}

extension WidthAttributeModifier where Self: Attributes & Mutable {

    public func width(
        _ value: Int?
    ) -> Self {
        setAttribute(WidthAttribute(value))
    }
}
