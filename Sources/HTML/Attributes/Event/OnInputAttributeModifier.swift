import SGML

public protocol OnInputAttributeModifier {
    associatedtype OnInputAttributeValueType: AttributeValueRepresentable = String
}

extension OnInputAttributeModifier where Self: Attributes & Mutable {

    public func onInput(
        _ value: OnInputAttributeValueType?
    ) -> Self {
        setAttribute(key: .oninput, value: value?.attributeValue)
    }
}
