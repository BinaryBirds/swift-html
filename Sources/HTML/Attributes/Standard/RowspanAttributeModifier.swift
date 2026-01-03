import SGML

public protocol RowSpanAttributeModifier {
    associatedtype RowSpanAttributeValueType: AttributeValueRepresentable = Int
}

extension RowSpanAttributeModifier where Self: Attributes & Mutable {

    public func rowSpan(
        _ value: RowSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.rowspan,
            value: value?.attributeValue
        )
    }
}
