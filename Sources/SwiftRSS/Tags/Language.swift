import SGML

public struct Language: StandardTag, ChannelContent {

    public let children: [Element]

    public init(
        _ value: String
    ) {
        self.children = [
            Text(value)
        ]
    }
}
