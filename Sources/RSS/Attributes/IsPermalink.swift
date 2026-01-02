import SGML

public struct IsPermalink: Attribute {

    public static let name = "isPermalink"
    public var value: String?

    public init(
        _ value: Bool
    ) {
        self.value = String(value)
    }
}
