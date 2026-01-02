import SGML

public protocol LabelAttributeModifier {
    associatedtype LabelAttributeValue: AttributeValueRepresentable = String
}

extension LabelAttributeModifier where Self: Attributes & Mutable {

    public func label(
        _ value: LabelAttributeValue?
    ) -> Self {
        setAttribute(key: .label, value: value?.attributeValue)
    }
}
