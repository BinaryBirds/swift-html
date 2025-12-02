public struct SizeAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: Int? = nil
    ) {
        self.value = value.map { String($0) }
    }
}

public protocol SizeAttributeModifier {

}

extension SizeAttributeModifier where Self: Attributes & Mutable {

    public func size(
        _ value: Int?
    ) -> Self {
        setAttribute(SizeAttribute(value))
    }
}
