import SGML

public enum ShadowRootModeAttributeValue: String, AttributeValueRepresentable {
    /// Exposes the internal shadow root DOM for JavaScript (recommended for most use cases).
    case open
    /// Hides the internal shadow root DOM from JavaScript.
    case closed
}

public protocol ShadowRootModeAttributeModifier {
    associatedtype
        ShadowRootModeAttributeValueType: AttributeValueRepresentable =
        ShadowRootModeAttributeValue
}

extension ShadowRootModeAttributeModifier where Self: Attributes & Mutable {

    public func shadowRootMode(

        _ value: ShadowRootModeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootmode,
            value: value?.attributeValue
        )
    }
}
