import SGML

public protocol ActionAttributeModifier {
    associatedtype ActionAttributeValue: AttributeValueRepresentable = String
}

extension ActionAttributeModifier where Self: Attributes & Mutable {

    public func action(
        _ value: ActionAttributeValue?
    ) -> Self {
        setAttribute(name: "action", value: value?.attributeValue)
    }
}
