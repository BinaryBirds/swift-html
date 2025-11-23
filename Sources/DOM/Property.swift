public struct Property: Sendable {

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
