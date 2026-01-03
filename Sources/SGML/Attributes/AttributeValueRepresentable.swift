public protocol AttributeValueRepresentable: Sendable {
    var attributeValue: String { get }
}

extension AttributeValueRepresentable
where
    Self: RawRepresentable,
    RawValue == String
{
    public var attributeValue: String { rawValue }
}

extension String: AttributeValueRepresentable {
    public var attributeValue: String { self }
}

extension Int: AttributeValueRepresentable {
    public var attributeValue: String { String(self) }
}

extension Double: AttributeValueRepresentable {
    public var attributeValue: String { String(self) }
}
