import SGML

public struct ColspanAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: Int? = nil
    ) {
        self.value = value.map { String($0) }
    }
}

public protocol ColspanAttributeModifier {

}

extension ColspanAttributeModifier where Self: Attributes & Mutable {

    public func colspan(
        _ value: Int?
    ) -> Self {
        setAttribute(ColspanAttribute(value))
    }
}
