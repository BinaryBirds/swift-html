import SGML

public protocol CoordsAttributeModifier {
    associatedtype CoordsAttributeValueType: AttributeValueRepresentable =
        String
}

extension CoordsAttributeModifier where Self: Attributes & Mutable {

    public func coords(
        _ value: CoordsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.coords,
            value: value?.attributeValue
        )
    }

    public func coords(
        _ values: [Int]
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.coords,
            value: values.joinedElementsAsString()
        )
    }

    public func coords(
        _ values: [Float]
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.coords,
            value: values.joinedElementsAsString()
        )
    }

    public func coords(
        _ values: [Double]
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.coords,
            value: values.joinedElementsAsString()
        )
    }

    public func coords(
        _ values: Int...
    ) -> Self {
        coords(values)
    }

    public func coords(
        _ values: Float...
    ) -> Self {
        coords(values)
    }

    public func coords(
        _ values: Double...
    ) -> Self {
        coords(values)
    }
}
