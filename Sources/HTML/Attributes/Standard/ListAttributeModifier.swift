import SGML

public protocol ListAttributeModifier {
    associatedtype ListAttributeValueType: AttributeValueRepresentable = String
}

extension ListAttributeModifier where Self: Attributes & Mutable {

    public func list(

        _ value: ListAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.list,
            value: value?.attributeValue
        )
    }
}
