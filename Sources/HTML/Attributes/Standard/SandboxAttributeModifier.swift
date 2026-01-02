import SGML

public protocol SandboxAttributeModifier {
    associatedtype SandboxAttributeValueType: AttributeValueRepresentable = String
}

extension SandboxAttributeModifier where Self: Attributes & Mutable {

    public func sandbox(

        _ value: SandboxAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.sandbox, value: value?.attributeValue)
    }
}
