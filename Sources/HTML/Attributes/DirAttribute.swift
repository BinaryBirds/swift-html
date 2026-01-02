import SGML

public enum DirValue: String, Sendable, AttributeValueRepresentable {
    /// The contents of the element are explicitly directionally isolated left-to-right text.
    case ltr
    /// The contents of the element are explicitly directionally isolated right-to-left text.
    case rtl
    /// The contents of the element are explicitly directionally isolated text, but the direction is to be determined programmatically using the contents of the element (as described below).
    case auto
}

public protocol DirAttributeModifier {
    associatedtype DirAttributeValue: AttributeValueRepresentable = DirValue
}

extension DirAttributeModifier where Self: Attributes & Mutable {

    public func dir(
        _ value: DirAttributeValue?
    ) -> Self {
        setAttribute(name: "dir", value: value?.attributeValue)
    }
}
