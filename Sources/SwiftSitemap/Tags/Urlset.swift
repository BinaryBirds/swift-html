import SGML

public struct Urlset: StandardTag {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ children: Url...
        ) -> [Url] {
            children
        }
    }

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        xmlns: String? = nil,
        children: [Url]
    ) {
        let attributes: [Attribute] =
            if let xmlns {
                [
                    Xmlns(value: xmlns)
                ]
            }
            else {
                [
                    Xmlns()
                ]
            }
        self.attributes = .init(attributes)
        self.children = children
    }

    public init(
        xmlns: String? = nil,
        @Builder _ block: () -> [Url]
    ) {
        self.init(
            xmlns: xmlns,
            children: block()
        )
    }
}
