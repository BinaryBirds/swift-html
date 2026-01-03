import SGML

public enum DirAttributeValue: String, AttributeValueRepresentable {
    /// The contents of the element are explicitly directionally isolated left-to-right text.
    case ltr
    /// The contents of the element are explicitly directionally isolated right-to-left text.
    case rtl
    /// The contents of the element are explicitly directionally isolated text, but the direction is to be determined programmatically using the contents of the element (as described below).
    case auto
}

public protocol DirAttributeModifier {
    associatedtype DirAttributeValueType: AttributeValueRepresentable =
        DirAttributeValue
}

extension DirAttributeModifier where Self: Attributes & Mutable {

    public func dir(
        _ value: DirAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.dir, value: value?.attributeValue)
    }
}
