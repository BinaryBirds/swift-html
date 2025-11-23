import SGML

public struct Language: StandardTag, ChannelContent {

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
