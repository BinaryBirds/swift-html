import SGML

public protocol AutoPlayAttributeModifier {

}

extension AutoPlayAttributeModifier where Self: Attributes & Mutable {

    public func autoPlay() -> Self {
        setAttribute(key: StandardAttributeKey.autoplay)
    }
}
