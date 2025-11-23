import SGML

public struct PubDate: StandardTag, ItemContent, ChannelContent {

    public let name: String = "pubDate"

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributeStore = .init()
        self.children = [
            Text(value)
        ]
    }
}
