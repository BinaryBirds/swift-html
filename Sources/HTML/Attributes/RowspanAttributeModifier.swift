import SGML

public protocol RowspanAttributeModifier {
    associatedtype RowspanAttributeValue: AttributeValueRepresentable = Int
}

extension RowspanAttributeModifier where Self: Attributes & Mutable {

    public func rowspan(
        _ value: RowspanAttributeValue?
    ) -> Self {
        setAttribute(key: .rowspan, value: value?.attributeValue)
    }
}
