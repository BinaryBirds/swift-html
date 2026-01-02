import SGML

public protocol SelectedAttributeModifier {
    associatedtype SelectedAttributeValueType: AttributeValueRepresentable = String
}

extension SelectedAttributeModifier where Self: Attributes & Mutable {

    public func selected(

        _ value: SelectedAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.selected, value: value?.attributeValue)
    }
}
