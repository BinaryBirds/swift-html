import SGML

public struct Ttl: StandardTag, ChannelContent {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: Int
    ) {
        self.attributes = .init()
        self.children = [
            Text(String(value))
        ]
    }
}
