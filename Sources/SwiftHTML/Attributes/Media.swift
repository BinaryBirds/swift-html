import SGML

public struct Media: Attribute {

    public var value: String?

    public init(
        _ value: String?
    ) {
        self.value = value
    }
}
