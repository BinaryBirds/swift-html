import SGML

public struct Class: Attribute {
    public static let name = "class"
    public var value: String?

    public init(value: String? = nil) {
        self.value = value
    }
}
