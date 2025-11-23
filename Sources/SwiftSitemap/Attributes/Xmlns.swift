import SGML

public struct Xmlns: Attribute {

    public var value: String?

    public init(
        _ value: String? = "http://www.sitemaps.org/schemas/sitemap/0.9"
    ) {
        self.value = value
    }
}
