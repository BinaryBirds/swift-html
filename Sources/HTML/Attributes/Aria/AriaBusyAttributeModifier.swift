import SGML

public protocol AriaBusyAttributeModifier {
    associatedtype AriaBusyAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaBusyAttributeModifier where Self: Attributes & Mutable {

    public func ariaBusy(
        _ value: AriaBusyAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.busy, value: value?.attributeValue)
    }
}
