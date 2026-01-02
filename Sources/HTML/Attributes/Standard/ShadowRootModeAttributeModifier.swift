import SGML

public protocol ShadowRootModeAttributeModifier {
    associatedtype ShadowRootModeAttributeValueType: AttributeValueRepresentable = String
}

extension ShadowRootModeAttributeModifier where Self: Attributes & Mutable {

    public func shadowRootMode(

        _ value: ShadowRootModeAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.shadowrootmode, value: value?.attributeValue)
    }
}
