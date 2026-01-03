import SGML

public protocol AllowFullscreenAttributeModifier {
    associatedtype
        AllowFullscreenAttributeValueType: AttributeValueRepresentable = String
}

extension AllowFullscreenAttributeModifier where Self: Attributes & Mutable {

    public func allowFullscreen(
        _ value: AllowFullscreenAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.allowfullscreen,
            value: value?.attributeValue
        )
    }
}
