import SGML

public enum ClosedByAttributeValue: String, Sendable,
    AttributeValueRepresentable
{
    case any
    case closeRequest
    case none
}

public protocol ClosedByAttributeModifier {
    associatedtype ClosedByAttributeValueType: AttributeValueRepresentable =
        ClosedByAttributeValue
}

extension ClosedByAttributeModifier where Self: Attributes & Mutable {

    public func closedBy(
        _ value: ClosedByAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.closedby,
            value: value?.attributeValue
        )
    }
}
