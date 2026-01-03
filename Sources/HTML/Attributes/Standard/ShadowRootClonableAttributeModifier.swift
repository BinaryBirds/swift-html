import SGML

public protocol ShadowRootClonableAttributeModifier {
    associatedtype
        ShadowRootClonableAttributeValueType: AttributeValueRepresentable =
        String
}

extension ShadowRootClonableAttributeModifier where Self: Attributes & Mutable {

    public func shadowRootClonable(
        _ value: ShadowRootClonableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootclonable,
            value: value?.attributeValue
        )
    }
}
