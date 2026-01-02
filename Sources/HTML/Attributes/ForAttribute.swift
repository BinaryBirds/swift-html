import SGML

public protocol ForAttributeModifier {
    associatedtype ForAttributeValue: AttributeValueRepresentable = String
}

extension ForAttributeModifier where Self: Attributes & Mutable {

    public func `for`(
        _ value: ForAttributeValue?
    ) -> Self {
        setAttribute(name: "for", value: value?.attributeValue)
    }
}
