import SGML

public enum AriaRelevantAttributeValue: String, AttributeValueRepresentable {
    /// Element nodes are added to the accessibility tree within the live region.
    case additions
    /// Shorthand for additions removals text.
    case all
    /// Text content, a text alternative, or an element node is removed from the accessibility tree.
    case removals
    /// Text content or a text alternative is added to any descendant in the live region.
    case text
}

public protocol AriaRelevantAttributeModifier {
    associatedtype AriaRelevantAttributeValueType: AttributeValueRepresentable =
        AriaRelevantAttributeValue
}

extension AriaRelevantAttributeModifier where Self: Attributes & Mutable {

    public func ariaRelevant(
        _ value: AriaRelevantAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.relevant,
            value: value?.attributeValue
        )
    }
}
