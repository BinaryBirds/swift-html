import SGML

public protocol OnLoadedDataAttributeModifier {
    associatedtype OnLoadedDataAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLoadedDataAttributeModifier where Self: Attributes & Mutable {

    public func onLoadedData(
        _ value: OnLoadedDataAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.loadedData,
            value: value?.attributeValue
        )
    }
}
