import SGML

public protocol ShadowRootDelegatesFocusAttributeModifier {
    associatedtype
        ShadowRootDelegatesFocusAttributeValueType: AttributeValueRepresentable =
        String
}

extension ShadowRootDelegatesFocusAttributeModifier
where Self: Attributes & Mutable {

    public func shadowRootDelegatesFocus(
        _ value: ShadowRootDelegatesFocusAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootdelegatesfocus,
            value: value?.attributeValue
        )
    }
}
