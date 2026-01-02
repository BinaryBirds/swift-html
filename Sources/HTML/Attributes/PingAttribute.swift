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
        return setAttribute(name: "ping", value: nil)
    }

    public func ping(
        _ value: [String]
    ) -> Self {
        setAttribute(name: "ping", value: value.joined(separator: " "))
    }
}
