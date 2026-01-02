import SGML

public struct RowspanAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: Int? = nil
    ) {
        self.value = value.map { String($0) }
    }
}

public protocol RowspanAttributeModifier {

}

extension RowspanAttributeModifier where Self: Attributes & Mutable {

    public func rowspan(
        _ value: Int?
    ) -> Self {
        setAttribute(RowspanAttribute(value))
    }
}
