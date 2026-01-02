import SGML

public struct TitleAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

/// A type that can modify the `title` attribute on an element.
///
/// Conform to this protocol to gain the `title(_:)` convenience API
/// for setting the HTML `title` attribute via attribute storage.
public protocol TitleAttributeModifier {

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
        _ value: String?
    ) -> Self {
        setAttribute(TitleAttribute(value))
    }
}
