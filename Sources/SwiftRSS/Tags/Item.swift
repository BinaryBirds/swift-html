import SGML

public struct Item: StandardTag, ChannelContent {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ children: ItemContent...,
        ) -> Item {
            .init(children: children)
        }
    }

    public let children: [Element]

    public init(
        children: [ItemContent]
    ) {
        self.children = children
    }

    public init(
        @Builder _ block: () -> Self
    ) {
        self = block()
    }
}
