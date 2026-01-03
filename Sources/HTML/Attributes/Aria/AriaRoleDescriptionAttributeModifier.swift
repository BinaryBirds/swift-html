import SGML

public protocol AriaRoleDescriptionAttributeModifier {
    associatedtype
        AriaRoleDescriptionAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRoleDescriptionAttributeModifier
where Self: Attributes & Mutable {

    public func ariaRoleDescription(
        _ value: AriaRoleDescriptionAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.roleDescription,
            value: value?.attributeValue
        )
    }
}
