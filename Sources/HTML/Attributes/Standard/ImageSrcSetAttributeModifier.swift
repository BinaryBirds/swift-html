import SGML

public protocol ImageSrcSetAttributeModifier {
    associatedtype ImageSrcSetAttributeValueType: AttributeValueRepresentable =
        String
}

extension ImageSrcSetAttributeModifier where Self: Attributes & Mutable {

    public func imageSrcSet(
        _ value: ImageSrcSetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.imagesrcset,
            value: value?.attributeValue
        )
    }
}
