public struct CrossoriginAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        case anonymous
        case useCredentials = "use-credentials"
    }

    public var value: String?

    public init(
        _ value: Value
    ) {
        self.value = value.rawValue
    }
}
