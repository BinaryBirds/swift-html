import SGML

public protocol AriaOrientationAttributeModifier {
    associatedtype
        AriaOrientationAttributeValueType: AttributeValueRepresentable = String
}

extension AriaOrientationAttributeModifier where Self: Attributes & Mutable {

    public func ariaOrientation(
        _ value: AriaOrientationAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.orientation,
            value: value?.attributeValue
        )
    }
}
