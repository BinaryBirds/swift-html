import SGML

public struct Item: StandardTag, ChannelContent {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        children: [ItemContent]
    ) {
        self.attributes = .init()
        self.children = children
    }

    public init(
        @Builder<ItemContent> _ block: () -> [ItemContent]
    ) {
        self.init(children: block())
    }
}
