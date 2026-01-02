import SGML

public struct SrcsetAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol SrcsetAttributeModifier {

}

extension SrcsetAttributeModifier where Self: Attributes & Mutable {

    public func srcset(
        _ value: String?
    ) -> Self {
        setAttribute(SrcsetAttribute(value))
    }
}
