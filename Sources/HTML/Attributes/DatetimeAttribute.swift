import SGML

public struct DatetimeAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol DatetimeAttributeModifier {

}

extension DatetimeAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Datetime attribute.
    public func datetime(
        _ value: String?
    ) -> Self {
        setAttribute(DatetimeAttribute(value))
    }
}
