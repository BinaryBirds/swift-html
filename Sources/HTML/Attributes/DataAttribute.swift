import SGML

public struct DataAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol DataAttributeModifier {

}

extension DataAttributeModifier where Self: Attributes & Mutable {

    public func data(
        _ value: String?
    ) -> Self {
        setAttribute(DataAttribute(value))
    }
}
