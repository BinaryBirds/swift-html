public protocol AttributeKeyRepresentable {
    var attributeKey: String { get }
}

extension AttributeKeyRepresentable
where
    Self: RawRepresentable,
    RawValue == String
{
    public var attributeKey: String { rawValue }
}
