import SGML

public enum DecodingAttributeValue: String, AttributeValueRepresentable {
    /// Prefer synchronous decoding for atomic presentation.
    case sync
    /// Prefer asynchronous decoding to avoid delaying presentation.
    case async
    /// No preference in decoding mode.
    case auto
}

public protocol DecodingAttributeModifier {
    associatedtype DecodingAttributeValueType: AttributeValueRepresentable =
        DecodingAttributeValue
}

extension DecodingAttributeModifier where Self: Attributes & Mutable {

    public func decoding(

        _ value: DecodingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.decoding,
            value: value?.attributeValue
        )
    }
}
