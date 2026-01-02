import SGML

public enum FetchpriorityValue: String, Sendable, AttributeValueRepresentable {
    /// Fetch the external script at a high priority relative to other external scripts.
    case high
    /// Fetch the external script at a low priority relative to other external scripts.
    case low
    /// Don't set a preference for the fetch priority. This is the default. It is used if no value or an invalid value is set.
    case auto
}

public protocol FetchpriorityAttributeModifier {
    associatedtype FetchpriorityAttributeValue: AttributeValueRepresentable = FetchpriorityValue
}

extension FetchpriorityAttributeModifier where Self: Attributes & Mutable {

    public func fetchpriority(
        _ value: FetchpriorityAttributeValue?
    ) -> Self {
        setAttribute(key: .fetchpriority, value: value?.attributeValue)
    }
}
