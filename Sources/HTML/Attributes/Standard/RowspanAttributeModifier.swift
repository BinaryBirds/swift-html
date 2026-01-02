import SGML

public protocol RowspanAttributeModifier {
    associatedtype RowspanAttributeValueType: AttributeValueRepresentable = Int
}

extension RowspanAttributeModifier where Self: Attributes & Mutable {

    public func rowspan(
        _ value: RowspanAttributeValueType?
    ) -> Self {
        setAttribute(key: .rowspan, value: value?.attributeValue)
    }
}
