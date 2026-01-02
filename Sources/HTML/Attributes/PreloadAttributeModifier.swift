import SGML

public enum PreloadValue: String, Sendable, AttributeValueRepresentable {
    case auto
    case metadata
    case none
}

public protocol PreloadAttributeModifier {
    associatedtype PreloadAttributeValue: AttributeValueRepresentable = PreloadValue
}

extension PreloadAttributeModifier where Self: Attributes & Mutable {

    public func preload(
        _ value: PreloadAttributeValue?
    ) -> Self {
        setAttribute(key: .preload, value: value?.attributeValue)
    }
}
