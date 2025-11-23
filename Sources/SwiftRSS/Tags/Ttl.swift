import SGML

public struct Ttl: StandardTag, ChannelContent {

    public var attributes: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: Int
    ) {
        self.attributes = .init()
        self.children = [
            Text(String(value))
        ]
    }
}
