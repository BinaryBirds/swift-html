import SGML

public enum ClosedbyAttributeValue: String, Sendable, AttributeValueRepresentable {
    case any
    case closeRequest
    case none
}

public protocol ClosedbyAttributeModifier {
    associatedtype ClosedbyAttributeValueType: AttributeValueRepresentable = ClosedbyAttributeValue
}

extension ClosedbyAttributeModifier where Self: Attributes & Mutable {

    public func closedby(
        _ value: ClosedbyAttributeValueType?
    ) -> Self {
        setAttribute(key: .closedby, value: value?.attributeValue)
    }
}
