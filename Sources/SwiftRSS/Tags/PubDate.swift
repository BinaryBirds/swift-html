import SGML

public struct PubDate: StandardTag, ItemContent, ChannelContent {

    public static let name = "pubDate"

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
