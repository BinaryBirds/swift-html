import SGML

public protocol OnVolumeChangeAttributeModifier {
    associatedtype
        OnVolumeChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnVolumeChangeAttributeModifier where Self: Attributes & Mutable {

    public func onVolumeChange(
        _ value: OnVolumeChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.volumeChange,
            value: value?.attributeValue
        )
    }
}
