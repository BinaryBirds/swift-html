import SGML

public struct Channel: StandardTag {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ children: ChannelContent...,
        ) -> Channel {
            .init(children: children)
        }
    }

    public let children: [Element]

    public init(
        children: [ChannelContent]
    ) {
        self.children = children
    }

    public init(
        @Builder _ block: () -> Self
    ) {
        self = block()
    }
}
