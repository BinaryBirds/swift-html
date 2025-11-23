import SGML

public struct Version: Attribute {

    public var value: String?

    public init(
        _ value: String? = "2.0"
    ) {
        self.value = value
    }
}
