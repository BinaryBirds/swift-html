import SGML

public struct SrcAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol SrcAttributeModifier {

}

extension SrcAttributeModifier where Self: Attributes & Mutable {

    public func src(
        _ value: String?
    ) -> Self {
        setAttribute(SrcAttribute(value))
    }
}
