import SGML

public protocol ShadowRootCustomElementRegistryAttributeModifier {
    associatedtype
        ShadowRootCustomElementRegistryAttributeValueType:
            AttributeValueRepresentable
        = String
}

extension ShadowRootCustomElementRegistryAttributeModifier
where Self: Attributes & Mutable {

    public func shadowRootCustomElementRegistry(
        _ value: ShadowRootCustomElementRegistryAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootcustomelementregistry,
            value: value?.attributeValue
        )
    }
}
