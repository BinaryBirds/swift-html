import SGML

public enum PreloadAttributeValue: String, AttributeValueRepresentable
{
    case auto
    case metadata
    case none
}

public protocol PreloadAttributeModifier {
    associatedtype PreloadAttributeValueType: AttributeValueRepresentable =
        PreloadAttributeValue
}

extension PreloadAttributeModifier where Self: Attributes & Mutable {

    public func preload(
        _ value: PreloadAttributeValueType?
    ) -> Self {
        setAttribute(key: .preload, value: value?.attributeValue)
    }
}
