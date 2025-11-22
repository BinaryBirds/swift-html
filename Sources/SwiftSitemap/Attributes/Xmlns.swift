import SGML

public struct Xmlns: Attribute {

    public let name = "xmlns"
    public var value: String?

    public init(
        value: String? = "http://www.sitemaps.org/schemas/sitemap/0.9"
    ) {
        self.value = value
    }
}
