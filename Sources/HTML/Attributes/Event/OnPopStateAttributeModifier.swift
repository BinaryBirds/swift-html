import SGML

public protocol OnPopStateAttributeModifier {
    associatedtype OnPopStateAttributeValueType: AttributeValueRepresentable = String
}

extension OnPopStateAttributeModifier where Self: Attributes & Mutable {

    public func onPopState(
        _ value: OnPopStateAttributeValueType?
    ) -> Self {
        setAttribute(key: .onpopstate, value: value?.attributeValue)
    }
}
