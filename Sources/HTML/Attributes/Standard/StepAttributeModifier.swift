import SGML

public protocol StepAttributeModifier {
    associatedtype StepAttributeValueType: AttributeValueRepresentable = Int
}

extension StepAttributeModifier where Self: Attributes & Mutable {

    public func step(

        _ value: StepAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.step,
            value: value?.attributeValue
        )
    }
}
