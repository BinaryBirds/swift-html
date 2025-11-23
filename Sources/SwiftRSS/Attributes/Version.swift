import SGML

public struct Version: Attribute {

    public static let name = "version"
    public var value: String?

    public init(
        value: String? = "2.0"
    ) {
        self.value = value
    }
}
