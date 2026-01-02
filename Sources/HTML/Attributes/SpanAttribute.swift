import SGML

public struct SpanAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: Int? = nil
    ) {
        self.value = value.map { String($0) }
    }
}

public protocol SpanAttributeModifier {

}

extension SpanAttributeModifier where Self: Attributes & Mutable {

    public func span(
        _ value: Int?
    ) -> Self {
        setAttribute(SpanAttribute(value))
    }
}
