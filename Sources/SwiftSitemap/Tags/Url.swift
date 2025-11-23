import SGML

public struct Url: StandardTag {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ children: UrlContent...
        ) -> Url {
            .init(children: children)
        }
    }

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        children: [UrlContent]
    ) {
        self.attributeStore = .init()
        self.children = children
    }

    public init(
        @Builder _ block: () -> Self
    ) {
        self = block()
    }
}
