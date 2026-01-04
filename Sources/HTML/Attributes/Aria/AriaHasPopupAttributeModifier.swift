import SGML

public enum AriaHasPopupAttributeValue: String, AttributeValueRepresentable {
    /// The element does not have a popup.
    case `false` = "false"
    /// The popup is a menu.
    case `true` = "true"
    /// The popup is a menu.
    case menu
    /// The popup is a listbox.
    case listbox
    /// The popup is a tree.
    case tree
    /// The popup is a grid.
    case grid
    /// The popup is a dialog.
    case dialog
}

public protocol AriaHasPopupAttributeModifier {
    associatedtype AriaHasPopupAttributeValueType: AttributeValueRepresentable =
        AriaHasPopupAttributeValue
}

extension AriaHasPopupAttributeModifier where Self: Attributes & Mutable {

    public func ariaHasPopup(
        _ value: AriaHasPopupAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.hasPopup,
            value: value?.attributeValue
        )
    }
}
