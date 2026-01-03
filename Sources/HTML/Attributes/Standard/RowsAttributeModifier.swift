import SGML

public protocol RowsAttributeModifier {
    associatedtype RowsAttributeValueType: AttributeValueRepresentable = Int
}

extension RowsAttributeModifier where Self: Attributes & Mutable {

    public func rows(

        _ value: RowsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.rows,
            value: value?.attributeValue
        )
    }
}
