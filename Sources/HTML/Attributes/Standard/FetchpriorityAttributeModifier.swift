import SGML

public enum FetchPriorityAttributeValue: String, Sendable,
    AttributeValueRepresentable
{
    /// Fetch the external script at a high priority relative to other external scripts.
    case high
    /// Fetch the external script at a low priority relative to other external scripts.
    case low
    /// Don't set a preference for the fetch priority. This is the default. It is used if no value or an invalid value is set.
    case auto
}

public protocol FetchPriorityAttributeModifier {
    associatedtype
        FetchPriorityAttributeValueType: AttributeValueRepresentable =
        FetchPriorityAttributeValue
}

extension FetchPriorityAttributeModifier where Self: Attributes & Mutable {

    public func fetchPriority(
        _ value: FetchPriorityAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.fetchpriority,
            value: value?.attributeValue
        )
    }
}
