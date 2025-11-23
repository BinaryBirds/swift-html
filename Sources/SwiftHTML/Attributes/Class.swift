import SGML

public struct Class: Attribute {
    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}
