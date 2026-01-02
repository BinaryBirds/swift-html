import SGML

public protocol AutoplayAttributeModifier {

}

extension AutoplayAttributeModifier where Self: Attributes & Mutable {

    public func autoplay() -> Self {
        setAttribute(name: "autoplay", value: nil)
    }
}
