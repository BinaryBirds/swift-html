import SGML

public protocol ImageSizesAttributeModifier {
    associatedtype ImageSizesAttributeValueType: AttributeValueRepresentable =
        String
}

extension ImageSizesAttributeModifier where Self: Attributes & Mutable {

    public func imageSizes(
        _ value: ImageSizesAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.imagesizes,
            value: value?.attributeValue
        )
    }
}
