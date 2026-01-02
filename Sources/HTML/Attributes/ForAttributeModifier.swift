import SGML

public protocol ForAttributeModifier {
    associatedtype ForAttributeValue: AttributeValueRepresentable = String
}

extension ForAttributeModifier where Self: Attributes & Mutable {

    public func `for`(
        _ value: ForAttributeValue?
    ) -> Self {
        setAttribute(key: .`for`, value: value?.attributeValue)
    }
}
