import SGML

public protocol TitleAttributeModifier {
    associatedtype TitleAttributeValueType: AttributeValueRepresentable = String
}

extension TitleAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `title` attribute on the receiver.
    ///
    /// Use this to provide advisory information, such as a tooltip,
    /// that is shown when the user hovers over the element.
    ///
    /// - Parameter value: The value of the `title` attribute. Pass
    ///   `nil` to remove the attribute from the element.
    ///
    /// - Returns: A modified copy of the element with the updated `title` attribute.
    public func title(
        _ value: TitleAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.title,
            value: value?.attributeValue
        )
    }
}
