import SGML

public enum AriaSortAttributeValue: String, AttributeValueRepresentable {
    /// Items are sorted in ascending order by this column.
    case ascending
    /// Items are sorted in descending order by this column.
    case descending
    /// There is no defined sort applied to the column.
    case none
    /// A sorting algorithm other than ascending or descending has been applied.
    case other
}

public protocol AriaSortAttributeModifier {
    associatedtype AriaSortAttributeValueType: AttributeValueRepresentable =
        AriaSortAttributeValue
}

extension AriaSortAttributeModifier where Self: Attributes & Mutable {

    public func ariaSort(
        _ value: AriaSortAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.sort, value: value?.attributeValue)
    }
}
