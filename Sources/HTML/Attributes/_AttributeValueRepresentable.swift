public protocol AttributeValueRepresentable {
    var attributeValue: String { get }
}

extension AttributeValueRepresentable where Self: RawRepresentable, RawValue == String {
    public var attributeValue: String { rawValue }
}

extension String: AttributeValueRepresentable {
    public var attributeValue: String { self }
}
