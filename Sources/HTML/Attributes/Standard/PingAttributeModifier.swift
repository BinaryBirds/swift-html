import SGML

public protocol PingAttributeModifier {
    associatedtype PingAttributeValueType: AttributeValueRepresentable = String
}

extension PingAttributeModifier where Self: Attributes & Mutable {

    public func ping(
        _ value: PingAttributeValueType?
    ) -> Self {
        if let value {
            return ping([value.attributeValue])
        }
        return setAttribute(key: StandardAttributeKey.ping)
    }

    public func ping(
        _ value: [String]
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.ping,
            value: value.joined(separator: " ")
        )
    }
}
