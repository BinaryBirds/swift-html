import SGML

public struct FetchpriorityAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        /// Fetch the external script at a high priority relative to other external scripts.
        case high
        /// Fetch the external script at a low priority relative to other external scripts.
        case low
        /// Don't set a preference for the fetch priority. This is the default. It is used if no value or an invalid value is set.
        case auto
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol FetchpriorityAttributeModifier {

}

extension FetchpriorityAttributeModifier where Self: Attributes & Mutable {

    public func fetchpriority(
        _ value: FetchpriorityAttribute.Value?
    ) -> Self {
        setAttribute(FetchpriorityAttribute(value))
    }
}
