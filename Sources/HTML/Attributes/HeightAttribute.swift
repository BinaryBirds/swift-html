import SGML

public protocol HeightAttributeModifier {
    associatedtype HeightAttributeValue: AttributeValueRepresentable = Int
}

extension HeightAttributeModifier where Self: Attributes & Mutable {

    public func height(
        _ value: HeightAttributeValue?
    ) -> Self {
        setAttribute(name: "height", value: value?.attributeValue)
    }
}
