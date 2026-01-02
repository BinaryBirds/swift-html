import SGML

public struct OpenAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol OpenAttributeModifier {

}

extension OpenAttributeModifier where Self: Attributes & Mutable {

    public func open() -> Self {
        setAttribute(OpenAttribute())
    }
}
