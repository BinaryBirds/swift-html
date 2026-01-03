import SGML

public protocol AriaKeyShortcutsAttributeModifier {
    associatedtype
        AriaKeyShortcutsAttributeValueType: AttributeValueRepresentable = String
}

extension AriaKeyShortcutsAttributeModifier where Self: Attributes & Mutable {

    public func ariaKeyShortcuts(
        _ value: AriaKeyShortcutsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.keyShortcuts,
            value: value?.attributeValue
        )
    }
}
