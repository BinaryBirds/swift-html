import SGML

public enum TargetValue: String, Sendable, AttributeValueRepresentable {
    /// Opens the link in a new window or tab.
    case blank = "_blank"
    /// Default; opens the link in the same frame as it was clicked.
    case `self` = "_self"
    /// Opens the link in the parent frame.
    case parent = "_parent"
    /// Opens the link in the full body of the window.
    case top = "_top"
}

public protocol TargetAttributeModifier {
    associatedtype TargetAttributeValue: AttributeValueRepresentable = TargetValue
}

extension TargetAttributeModifier where Self: Attributes & Mutable {

    /// Sets a target attribute.
    public func target(
        _ value: TargetAttributeValue
    ) -> Self {
        setAttribute(key: .target, value: value.attributeValue)
    }
}
