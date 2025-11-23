import SGML

public struct Href: Attribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}
