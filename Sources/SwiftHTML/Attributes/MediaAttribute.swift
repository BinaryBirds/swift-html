public struct MediaAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String?
    ) {
        self.value = value
    }
}

public protocol MediaAttributeModifier {

}

extension MediaAttributeModifier where Self: Attributes & Mutable {

    /// Specifies on what device the linked document will be displayed.
    public func media(
        _ value: String
    ) -> Self {
        setAttribute(MediaAttribute(value))
    }
}
