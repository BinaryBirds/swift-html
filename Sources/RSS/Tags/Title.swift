import SGML

public struct Title: StandardTag, ItemContent, ChannelContent {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            CDataText(value)
        ]
    }
}
