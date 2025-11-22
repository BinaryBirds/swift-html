import SGML

public struct Version: Attribute {

    public let name: String = "version"
    public var value: String?

    public init(
        value: String? = "2.0"
    ) {
        self.value = value
    }
}
