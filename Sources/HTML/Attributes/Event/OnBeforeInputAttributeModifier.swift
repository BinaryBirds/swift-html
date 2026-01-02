import SGML

public protocol OnBeforeInputAttributeModifier {
    associatedtype OnBeforeInputAttributeValueType: AttributeValueRepresentable = String
}

extension OnBeforeInputAttributeModifier where Self: Attributes & Mutable {

    public func onBeforeInput(
        _ value: OnBeforeInputAttributeValueType?
    ) -> Self {
        setAttribute(key: .onbeforeinput, value: value?.attributeValue)
    }
}
