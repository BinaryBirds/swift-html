import SGML

public struct LastBuildDate: StandardTag, ChannelContent {

    public let name: String = "lastBuildDate"
    public let children: [Element]

    public init(
        _ value: String
    ) {
        self.children = [
            Text(value)
        ]
    }
}
