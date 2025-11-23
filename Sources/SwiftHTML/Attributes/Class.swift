import SGML

public struct Class: Attribute {
    public let name: String = "class"
    public var value: String?

    public init(value: String? = nil) {
        self.value = value
    }
}
