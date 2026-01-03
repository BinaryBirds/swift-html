import SGML

public protocol OnLoadedMetadataAttributeModifier {
    associatedtype
        OnLoadedMetadataAttributeValueType: AttributeValueRepresentable = String
}

extension OnLoadedMetadataAttributeModifier where Self: Attributes & Mutable {

    public func onLoadedMetadata(
        _ value: OnLoadedMetadataAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.loadedMetadata,
            value: value?.attributeValue
        )
    }
}
