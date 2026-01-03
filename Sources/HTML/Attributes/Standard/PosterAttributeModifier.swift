import SGML

public protocol PosterAttributeModifier {
    associatedtype PosterAttributeValueType: AttributeValueRepresentable =
        String
}

extension PosterAttributeModifier where Self: Attributes & Mutable {

    public func poster(

        _ value: PosterAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.poster,
            value: value?.attributeValue
        )
    }
}
