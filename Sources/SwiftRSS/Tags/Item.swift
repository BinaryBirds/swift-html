import SGML

public struct Item: StandardTag, ChannelContent {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ children: ItemContent...
        ) -> Item {
            .init(children: children)
        }
    }

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        children: [ItemContent]
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
