import SGML

public protocol InputmodeAttributeModifier {
    associatedtype InputmodeAttributeValueType: AttributeValueRepresentable = String
}

extension InputmodeAttributeModifier where Self: Attributes & Mutable {

    public func inputmode(
        _ value: InputmodeAttributeValueType?
    ) -> Self {
        setAttribute(key: .inputmode, value: value?.attributeValue)
    }
}
