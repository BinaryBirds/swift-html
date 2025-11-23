import DOM

public protocol Attribute: Sendable {
    var name: String { get }
    var value: String? { get }
}

public struct RawAttribute: Attribute {
    public var name: String
    public var value: String?

    public init(
        name: String,
        value: String? = nil
    ) {
        self.name = name
        self.value = value
    }
}
