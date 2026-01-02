import SGML

public protocol PingAttributeModifier {
    associatedtype PingAttributeValue: AttributeValueRepresentable = String
}

extension PingAttributeModifier where Self: Attributes & Mutable {

    public func ping(
        _ value: PingAttributeValue?
    ) -> Self {
        if let value {
            return ping([value.attributeValue])
        }
        return setAttribute(key: .ping)
    }

    public func ping(
        _ value: [String]
    ) -> Self {
        setAttribute(key: .ping, value: value.joined(separator: " "))
    }
}
