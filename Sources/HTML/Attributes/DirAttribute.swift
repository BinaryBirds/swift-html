import SGML

public struct DirAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        /// The contents of the element are explicitly directionally isolated left-to-right text.
        case ltr
        /// The contents of the element are explicitly directionally isolated right-to-left text.
        case rtl
        /// The contents of the element are explicitly directionally isolated text, but the direction is to be determined programmatically using the contents of the element (as described below).
        case auto
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol DirAttributeModifier {

}

extension DirAttributeModifier where Self: Attributes & Mutable {

    public func dir(
        _ value: DirAttribute.Value?
    ) -> Self {
        setAttribute(DirAttribute(value))
    }
}
