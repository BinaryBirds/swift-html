import SGML

public struct Ttl: StandardTag, ChannelContent {

    public let children: [Element]

    public init(
        _ value: Int
    ) {
        self.children = [
            Text(String(value))
        ]
    }
}
