import SGML

public protocol PopoverAttributeModifier {
    associatedtype PopoverAttributeValueType: AttributeValueRepresentable = String
}

extension PopoverAttributeModifier where Self: Attributes & Mutable {

    public func popover(
        _ value: PopoverAttributeValueType?
    ) -> Self {
        setAttribute(key: .popover, value: value?.attributeValue)
    }
}
