import SGML

public protocol OnRejectionHandledAttributeModifier {
    associatedtype OnRejectionHandledAttributeValueType: AttributeValueRepresentable = String
}

extension OnRejectionHandledAttributeModifier where Self: Attributes & Mutable {

    public func onRejectionHandled(
        _ value: OnRejectionHandledAttributeValueType?
    ) -> Self {
        setAttribute(key: .onrejectionhandled, value: value?.attributeValue)
    }
}
