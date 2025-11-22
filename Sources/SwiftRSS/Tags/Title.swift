import SGML

public struct Title: StandardTag, ItemContent, ChannelContent {

    public let children: [Element]

    public init(
        _ value: String
    ) {
        self.children = [
            CDataText(value)
        ]
    }
}
