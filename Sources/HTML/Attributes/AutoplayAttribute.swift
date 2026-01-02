import SGML

public struct AutoplayAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol AutoplayAttributeModifier {

}

extension AutoplayAttributeModifier where Self: Attributes & Mutable {

    public func autoplay() -> Self {
        setAttribute(AutoplayAttribute())
    }
}
