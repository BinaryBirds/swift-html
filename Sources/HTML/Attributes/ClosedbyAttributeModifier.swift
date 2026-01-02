import SGML

public enum ClosedbyValue: String, Sendable, AttributeValueRepresentable {
    case any
    case closeRequest
    case none
}

public protocol ClosedbyAttributeModifier {
    associatedtype ClosedbyAttributeValue: AttributeValueRepresentable = ClosedbyValue
}

extension ClosedbyAttributeModifier where Self: Attributes & Mutable {

    public func closedby(
        _ value: ClosedbyAttributeValue?
    ) -> Self {
        setAttribute(key: .closedby, value: value?.attributeValue)
    }
}
