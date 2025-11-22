import SGML

public struct PubDate: StandardTag, ItemContent, ChannelContent {
    
    public let name: String = "pubDate"
    public let children: [Element]

    public init(
        _ value: String
    ) {
        self.children = [
            Text(value)
        ]
    }
}

