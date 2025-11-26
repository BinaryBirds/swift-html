public struct PingAttribute: HTMLAttribute {
    public var value: String?

    public init(
        _ value: [String]? = nil
    ) {
        self.value = value?.joined(separator: " ")
    }
}

public protocol PingAttributeModifier {

}

extension PingAttributeModifier where Self: Attributes & Mutable {

    public func ping(
        _ value: String?
    ) -> Self {
        if let value {
            return ping([value])
        }
        return setAttribute(PingAttribute(nil))
    }

    public func ping(
        _ value: [String]
    ) -> Self {
        setAttribute(PingAttribute(value))
    }
}
