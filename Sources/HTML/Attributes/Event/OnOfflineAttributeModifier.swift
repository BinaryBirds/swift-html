import SGML

public protocol OnOfflineAttributeModifier {
    associatedtype OnOfflineAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnOfflineAttributeModifier where Self: Attributes & Mutable {

    public func onOffline(
        _ value: OnOfflineAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.offline,
            value: value?.attributeValue
        )
    }
}
