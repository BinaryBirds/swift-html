import SGML

public struct PubDate: StandardTag, ItemContent, ChannelContent {

    public let name: String = "pubDate"

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]
    }
}
