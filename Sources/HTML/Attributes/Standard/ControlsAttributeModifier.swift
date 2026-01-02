import SGML

public protocol ControlsAttributeModifier {

}

extension ControlsAttributeModifier where Self: Attributes & Mutable {

    public func controls() -> Self {
        setAttribute(key: StandardAttributeKey.controls)
    }
}
