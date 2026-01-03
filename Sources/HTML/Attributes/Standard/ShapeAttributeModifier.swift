import SGML

public enum ShapeAttributeValue: String, AttributeValueRepresentable {
    /// Specifies the entire region
    case `default`
    /// Defines a rectangular region
    case rect
    /// Defines a circular region
    case circle
    /// Defines a polygonal region
    case poly
}

public protocol ShapeAttributeModifier {
    associatedtype ShapeAttributeValueType: AttributeValueRepresentable =
        ShapeAttributeValue
}

extension ShapeAttributeModifier where Self: Attributes & Mutable {

    public func shape(
        _ value: ShapeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shape,
            value: value?.attributeValue
        )
    }
}
