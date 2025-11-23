import SGML

public struct Media: Attribute {

    public var value: String?

    public init(
        _ value: MediaQuery
    ) {
        self.value = value.value
    }
}
