import SGML

public struct IsPermalink: Attribute {

    public let name: String = "isPermalink"
    public var value: String?

    public init(
        value: Bool
    ) {
        self.value = String(value)
    }
}
