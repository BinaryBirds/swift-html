import SGML

public struct Link: StandardTag, ChannelContent {

    public var attributes: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]
    }
}
