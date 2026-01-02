import SGML

public struct Channel: StandardTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        children: [ChannelContent]
    ) {
        self.attributes = .init()
        self.children = children
    }

    public init(
        @Builder<ChannelContent> _ block: () -> [ChannelContent]
    ) {
        self.init(children: block())
    }
}
