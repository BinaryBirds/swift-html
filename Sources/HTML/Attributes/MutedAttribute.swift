import SGML

public struct MutedAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol MutedAttributeModifier {

}

extension MutedAttributeModifier where Self: Attributes & Mutable {

    public func muted() -> Self {
        setAttribute(MutedAttribute())
    }
}
