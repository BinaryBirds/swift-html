import SGML

public enum PopoverTargetActionAttributeValue: String,
    AttributeValueRepresentable
{
    /// Shows or hides the targeted popover element.
    case toggle
    /// Shows the targeted popover element.
    case show
    /// Hides the targeted popover element.
    case hide
}

public protocol PopoverTargetActionAttributeModifier {
    associatedtype
        PopoverTargetActionAttributeValueType: AttributeValueRepresentable =
        PopoverTargetActionAttributeValue
}

extension PopoverTargetActionAttributeModifier
where Self: Attributes & Mutable {

    public func popoverTargetAction(

        _ value: PopoverTargetActionAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.popovertargetaction,
            value: value?.attributeValue
        )
    }
}
