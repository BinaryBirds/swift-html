import SGML

public struct HeightAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: Int? = nil
    ) {
        self.value = value.map { String($0) }
    }
}

public protocol HeightAttributeModifier {

}

extension HeightAttributeModifier where Self: Attributes & Mutable {

    public func height(
        _ value: Int?
    ) -> Self {
        setAttribute(HeightAttribute(value))
    }
}
