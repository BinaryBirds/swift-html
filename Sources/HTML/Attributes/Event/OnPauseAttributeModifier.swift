import SGML

public protocol OnPauseAttributeModifier {
    associatedtype OnPauseAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPauseAttributeModifier where Self: Attributes & Mutable {

    public func onPause(
        _ value: OnPauseAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.pause, value: value?.attributeValue)
    }
}
