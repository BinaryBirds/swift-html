import SGML

public struct Ttl: StandardTag, ChannelContent {

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: Int
    ) {
        self.attributeStore = .init()
        self.children = [
            Text(String(value))
        ]
    }
}
