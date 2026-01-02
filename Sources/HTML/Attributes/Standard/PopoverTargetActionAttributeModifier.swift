import SGML

public protocol PopoverTargetActionAttributeModifier {
    associatedtype PopoverTargetActionAttributeValueType: AttributeValueRepresentable = String
}

extension PopoverTargetActionAttributeModifier where Self: Attributes & Mutable {

    public func popoverTargetAction(

        _ value: PopoverTargetActionAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.popovertargetaction, value: value?.attributeValue)
    }
}
